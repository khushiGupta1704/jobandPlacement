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
using System.Net.Sockets;

public partial class register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        showPopupData();
        if (!IsPostBack)
        {
            verma.Fill_Combo_Not_Empty("select * from departments where status=1", departments);
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

    protected void submit_button_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        dt = verma.Show_Data("Select TOP 1 * from users where email='" + inputEmail.Text + "'");
        Random rand = new Random();
        int num = rand.Next(111, 999);
        string userid = "A2ZI" + DateTime.Now.Year + DateTime.Now.Month + DateTime.Now.Day + num;

        int password = rand.Next(111111, 999999);
        if (dt.Rows.Count == 0)
        {
            if (userImage.HasFile != false)
        {
            verma.Save_Data("insert into users values ('" + inputName.Text + "','" + password + "','" + verma.File_Upload_Html(userImage) + "','" + verma.File_Upload_Html(FileUpload1) + "','1','" + departments.Text + "','" + selectIndustry.Text + "','User','" + inputEmail.Text + "','" + inputPhone.Text + "','','" + address.Text + "','" + selectState.Text + "','" + textCity.Text + "','" + textPinCode.Text + "','" + DateTime.Now + "','"+ userid + "')");
            lable_data.Visible = true;
            lable_data.Attributes.Add("class", "alert alert-success");
            lable_msg.Text = "Welcome To A2ZJobPlacements! Your User Id='"+ userid + "' and Password is='"+ password + "'";
            
            //ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", verma.message_empty("Industries has Been added Successfully!"), true);
        }
        else
        {
            lable_data.Visible = true;
            lable_data.Attributes.Add("class", "alert alert-danger");
            lable_msg.Text = "Upload the image!";
        }
        }
        else
        {
            lable_data.Visible = true;
            lable_data.Attributes.Add("class", "alert alert-danger");
            lable_msg.Text = "Email Already Exists!";
        }
    }
    protected void departments_SelectedIndexChanged(object sender, EventArgs e)
    {
        verma.Fill_Combo_Not_Empty("select * from industries where status=1 and department_id='" + departments.SelectedItem.Value + "'", selectIndustry);
    }
    protected void btnTest_Click(object sender, EventArgs e)
    {
        lable_data.Visible = false;
    }
    protected void CheckBoxRequired_ServerValidate(object sender, ServerValidateEventArgs e)
    {
        
       
    }
}