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
using System.Activities.Expressions;
using System.Net;

public partial class forgetPassword : System.Web.UI.Page
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
        if (inputEmail.Text != "")
        {
            DataTable dt = new DataTable();
            dt = verma.Show_Data("Select * from users where email='" + inputEmail.Text + "' or user_id='"+ inputEmail.Text + "'");
            Random rand = new Random();
            int password = rand.Next(111111, 999999);
            if (dt.Rows.Count > 0)
            {                
                verma.Save_Data("update users set password='" + password + "'where email='" + inputEmail.Text + "' or user_id='" + inputEmail.Text + "'");
                lable_data.Visible = true;
                lable_data.Attributes.Add("class", "alert alert-success");
                lable_msg.Text = "Your New Password is '"+ password + "'";
                
            }
            else if(verma.Get_status("Select * from industries where email = '" + inputEmail.Text + "' or user_id = '" + inputEmail.Text + "'")==true)
            {
               verma.Save_Data("update industries set password='" + password +"'where email='" + inputEmail.Text + "' or user_id='" + inputEmail.Text + "'");
                lable_data.Visible = true;
                lable_data.Attributes.Add("class", "alert alert-success");
                lable_msg.Text = "Your New Password is '" + password + "'";
            }
            else if (verma.Get_status("Select * from admins where email = '" + inputEmail.Text + "' or user_id = '" + inputEmail.Text + "'") == true)
            {
                verma.Save_Data("update admins set password='" + password + "'where email='" + inputEmail.Text + "' or user_id='" + inputEmail.Text + "'");
                lable_data.Visible = true;
                lable_data.Attributes.Add("class", "alert alert-success");
                lable_msg.Text = "Your New Password is '" + password + "'";
            }
            else
            {
                lable_data.Visible = true;
                lable_data.Attributes.Add("class", "alert alert-danger");
                lable_msg.Text = "Email or user Id is not valid.";
            }
        }
        else
        {
            lable_data.Visible = true;
            lable_data.Attributes.Add("class", "alert alert-danger");
            lable_msg.Text = "Please fill all the fields.";
        }
    }
    protected void btnTest_Click(object sender, EventArgs e)
    {
        lable_data.Visible = false;
    }
}