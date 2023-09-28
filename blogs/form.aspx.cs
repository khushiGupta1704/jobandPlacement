using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Data.SqlClient;
using System.ComponentModel.DataAnnotations;
using System.Xml.Linq;
using System.IdentityModel.Protocols.WSTrust;

public partial class form : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            showPopupData();
        }
        if (!IsPostBack)
        {
            verma.Fill_Combo_Not_Empty("select * from departments where status=1", departments);
        }
        if (Request.QueryString["id"] != null)
        {
            if (!IsPostBack)
            {
                show_data();
            }

        }
    }

    private void show_data()
    {
        DataTable dt = new DataTable();
        dt = verma.Show_Data("Select * from blogs where id='" + Request.QueryString["id"] + "'");
        if (dt.Rows.Count > 0)
        {
            title_msg.Text = "Edit Blog";
            inputTitle.Text = dt.Rows[0]["title"].ToString();
            inputPosition.Text = dt.Rows[0]["position"].ToString();
            selectStatus.Text = dt.Rows[0]["status"].ToString();
            textDescription.Text = dt.Rows[0]["description"].ToString();
            departments.Text = dt.Rows[0]["department_id"].ToString();
            textMetaTitle.Text = dt.Rows[0]["meta_title"].ToString();
            textMetaTag.Text = dt.Rows[0]["meta_tag"].ToString();
            meta_description.Text = dt.Rows[0]["meta_description"].ToString();
            textUrl.Text = dt.Rows[0]["url"].ToString();
            ViewState["image"]= dt.Rows[0]["image"].ToString();

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
    protected void submit_slider_Click(object sender, EventArgs e)
    {

            string str = textDescription.Text;
            string str1 = Server.HtmlEncode(str);
            string str2 = Server.HtmlDecode(str1);
            if (Request.QueryString["id"] != null)
            {
                if (blogImage.HasFile)
                {
                    ViewState["image"] = verma.File_Upload_Html(blogImage);
                }
                
                verma.Save_Data("update blogs set title='" + inputTitle.Text + "',image='"+ ViewState["image"] + "',description='"+ str2 + "',position='" + inputPosition.Text + "',status='" + selectStatus.Text + "',department_id='"+ departments.Text + "',url='" + textUrl.Text + "',meta_title='"+ textMetaTitle.Text + "',meta_tag='"+ textMetaTag.Text + "',meta_description='" + meta_description.Text + "'where id='" + Request.QueryString["id"] + "'");
                lable_data.Visible = true;
                lable_data.Attributes.Add("class", "alert alert-success alert-dismissible fade show");
                lable_msg.Text = "Blog has been updated sucessfully";
                Response.Redirect("index.aspx");
            }           
            else
            {
                if (blogImage.HasFile != false)
                {
                    verma.Save_Data("insert into blogs values ('" + inputTitle.Text + "','" + verma.File_Upload_Html(blogImage) + "','"+ str2 + "','" + inputPosition.Text + "','" + selectStatus.Text + "','" + departments.Text + "','" + textUrl.Text + "','" + textMetaTitle.Text + "','"+ textMetaTag.Text + "','"+ meta_description.Text + "','" + DateTime.Now + "','" + verma.Get_ind() + "')");
                    lable_data.Visible = true;
                    lable_data.Attributes.Add("class", "alert alert-success alert-dismissible fade show");
                    lable_msg.Text = "Blog has Been added Successfully!";
                }
                else
                {
                lable_data.Visible = true;
                lable_data.Attributes.Add("class", "alert alert-danger alert-dismissible fade show");
                lable_msg.Text = "Please Upload a image for Blog.";
                }

            }

   
}
    protected void btnTest_Click(object sender, EventArgs e)
    {
        lable_data.Visible = false;
    }

}