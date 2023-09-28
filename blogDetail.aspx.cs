using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Data.SqlClient;
using System.Net;
using AjaxControlToolkit.HTMLEditor.ToolbarButton;
using System.Web.UI.HtmlControls;

public partial class blogDetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        showPopupData();

        if (Page.RouteData.Values["id"] != null)
        {
            if (!IsPostBack)
            {
                show_data();
            }
        }
        if (!IsPostBack)
        {
            Repeater1.DataSource = verma.Show_Data("select count(*) as blog_count,departments.title as exp1 from blogs INNER JOIN departments ON blogs.department_id = departments.id where blogs.status=1 group by departments.title");
            Repeater1.DataBind();
            Repeater2.DataSource = verma.Show_Data("SELECT TOP 5 * FROM blogs;");
            Repeater2.DataBind();
            Repeater5.DataSource = verma.Show_Data("SELECT * FROM tags where page_name='Blogs' and status=1 order by position;");
            Repeater5.DataBind();

        }
    }
    private void show_data()
    {
        DataTable dt = new DataTable();
        dt = verma.Show_Data("Select * from blogs where id='"+ Page.RouteData.Values["id"] + "'");
        if (dt.Rows.Count>0)
        {
            lable_title.Text = dt.Rows[0]["title"].ToString();
            image.ImageUrl = dt.Rows[0]["image"].ToString();
            label_description.Text = dt.Rows[0]["description"].ToString();
            lable_id.Text = dt.Rows[0]["id"].ToString();
            Repeater3.DataSource = verma.Show_Data("SELECT comments.*,comments.id as comment_id,users.name as user_name,users.image as user_image from comments INNER JOIN users ON comments.user_id = users.id where comments.post_type='Blog' and  comments.post_id= '" + dt.Rows[0]["id"].ToString() + "'");
            Repeater3.DataBind();
        }
        
    }

    private void showPopupData()
    {
        //rptrSlider.DataSource = verma.Show_Data("select * from TB_SliderImages");
        //rptrSlider.DataBind();
        //DataTable dtPopup = new DataTable();
        //dtPopup = verma.Show_Data("select top 1 * from TB_PopupImg order by id desc");
        //if (dtPopup.Rows.Count > 0)
        //{
        //    string str = "";
        //    str += "<div class='modal fade' id='myModal' tabindex='-1' role='dialog' aria-labelledby='myModalLabel' aria-hidden='true'>";
        //    str += "<div class='modal-dialog'>";
        //    str += "<div class='modal-content'>";
        //    str += "<div class='modal-header'>";
        //    str += "<button type='button' class='close' data-dismiss='modal' aria-hidden='true'>&times;</button>";
        //    str += "<h4 class='modal-title' id='myModalLabel'>" + dtPopup.Rows[0]["title"].ToString() + "</h4>";
        //    str += "</div>";
        //    str += "<div class='modal-body'>";
        //    str += "<img  src=" + dtPopup.Rows[0]["imgUrl"].ToString() + " class='img-responsive' />";
        //    str += "</div>";
        //    str += "<div class='modal-footer'>";
        //    str += "<button type='button' class='btn btn-default' data-dismiss='modal'>Close</button>";
        //    str += "</div>";
        //    str += "</div>";
        //    str += "</div>";
        //    str += "</div>";
        //    popupModal.InnerHtml = str;
        //}
        //else
        //{
        //    string str = "";
        //    str += "<div style='Display:None;'>";
        //    str += "</div>";
        //    popupModal.InnerHtml = str;
        //}
    }
    protected void delete_button_Click(object sender, EventArgs e)
    {

    }

    protected void Comment_message_Click(object sender, EventArgs e)
    {
        if (verma.Get_Uid()!="")
        {
            if (message.Text != "")
            {
                verma.Save_Data("insert into comments values ('" + lable_id.Text + "','Blog','" + verma.Get_Uid() + "','" + message.Text + "','','" + DateTime.Now + "')");
                Page.Response.Redirect(Page.Request.Url.ToString(), true);
            }
        }
        else
        {
            Response.Redirect("http://localhost:55500/Login");

        }


        //lable_data.Visible = true;
        //lable_data.Attributes.Add("class", "alert alert-success alert-dismissible fade show");
        //lable_msg.Text = "User has Been added Successfully!";
    }

    protected void reply_message_Click(object sender, CommandEventArgs e)
    {
        if (verma.Get_Uid() != "")
        {
            foreach (RepeaterItem item in Repeater3.Items)
            {
                // TextBox reply_text = LoginView1.FindControl("reply_text") as TextBox; (TextBox)Page.FindControl("");
                var reply_text = (item.FindControl("reply_text") as TextBox).Text;
                if (reply_text != null)
                {
                    verma.Save_Data("insert into replies values ('" + e.CommandArgument + "','" + verma.Get_Uid() + "','" + reply_text + "','" + DateTime.Now + "')");
                    Page.Response.Redirect(Page.Request.Url.ToString(), true);
                }

            }
        }
        else
        {
            Response.Redirect("http://localhost:55500/Login");

        }        
        
    }

   protected void Repeater3_ItemDataBound1(object sender, RepeaterItemEventArgs e)
    {
        //HtmlControl replySection = (HtmlControl)e.Item.FindControl("replySection");
        //HtmlControl replyText = (HtmlControl)e.Item.FindControl("replyText");
        //if (verma.Get_Uid() != "")
        //{
        //    replySection.Visible = true;
        //    replyText.Visible = false;
        //}
        //else
        //{
        //    replySection.Visible = false;
        //    replyText.Visible = true;
        //}
        string id = ((Label)e.Item.FindControl("comment_id")).Text;
        DataTable dt = new DataTable();
        Repeater Repeater4 = ((Repeater)e.Item.FindControl("Repeater4"));
        Repeater4.DataSource = verma.Show_Data("SELECT replies.*,replies.id as reply_id,users.name as name,users.image as profile from replies INNER JOIN users ON replies.user_id = users.id where replies.comment_id= '" + id + "'");
        Repeater4.DataBind();
    }
}