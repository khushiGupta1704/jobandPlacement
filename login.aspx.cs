using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Data.SqlClient;
using System.Web.Security;
using AjaxControlToolkit.HTMLEditor.ToolbarButton;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        showPopupData();
        
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

    protected void submit_button_Click(object sender, EventArgs e)
    {
        if (inputEmail.Text != "" && textPassword.Text != "")
        {
            DataTable dt = new DataTable();
            dt = verma.Show_Data("Select * from users where email='" + inputEmail.Text + "' or user_id='"+ inputEmail.Text + "' and password='" + textPassword.Text + "' and status=1");
                       
            if (dt.Rows.Count > 0)
            {
                Response.Cookies["user_id"].Expires = DateTime.Now.AddHours(1);
                Response.Cookies["user_id"].Value = dt.Rows[0]["id"].ToString();               
                  Response.Redirect("profile.aspx");
                
            }
            else if(verma.Get_status("Select * from industries where email = '" + inputEmail.Text + "' or user_id = '" + inputEmail.Text + "' and password = '" + textPassword.Text + "' and status=1") ==true)
            {
                DataTable dt1 = new DataTable();
                dt1 = verma.Show_Data("Select * from industries where email='" + inputEmail.Text + "' or user_id='" + inputEmail.Text + "' and password='" + textPassword.Text + "' and status=1");
                Response.Cookies["ind_id"].Expires = DateTime.Now.AddHours(1);
                Response.Cookies["ind_id"].Value = dt1.Rows[0]["id"].ToString();
                Response.Redirect("industries/setting.aspx");
            }
            else if (verma.Get_status("Select * from admins where email = '" + inputEmail.Text + "' or user_id = '" + inputEmail.Text + "' and password = '" + textPassword.Text + "' and status=1") == true)
            {
                DataTable dt1 = new DataTable();
                dt1 = verma.Show_Data("Select * from admins where email='" + inputEmail.Text + "' or user_id='" + inputEmail.Text + "' and password='" + textPassword.Text + "' and status=1");
                Response.Cookies["admin_id"].Expires = DateTime.Now.AddHours(1);
                Response.Cookies["admin_id"].Value = dt1.Rows[0]["id"].ToString();
                Response.Redirect("admin/blogs/index.aspx");
            }
            else
            {
                lable_data.Visible = true;
                lable_data.Attributes.Add("class", "alert alert-danger alert-dismissible fade show");
                lable_msg.Text = "Email or Password is not valid.";
            }
        }
        else
        {
            lable_data.Visible = true;
            lable_data.Attributes.Add("class", "alert alert-danger alert-dismissible fade show");
            lable_msg.Text = "Please fill all the fields.";
        }
    }
    protected void btnTest_Click(object sender, EventArgs e)
    {
        lable_data.Visible = false;
    }
}