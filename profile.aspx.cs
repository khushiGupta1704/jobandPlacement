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

public partial class profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        showPopupData();
        if (!IsPostBack)
        {
            verma.Fill_Combo_Not_Empty("select * from departments where status=1", departments);
            industryData();
        }
        if (!IsPostBack)
        {
            DataTable dt = new DataTable();
            dt = verma.Show_Data("select * from users where id='" + verma.Get_Uid() + "'");
            if (dt.Rows.Count > 0)
            {
                inputName.Text = dt.Rows[0]["name"].ToString();
                departments.Text = dt.Rows[0]["department_id"].ToString();
                selectIndustry.Text = dt.Rows[0]["industry_id"].ToString();
                //TextBox2.Text = dt.Rows[0]["role"].ToString();
                address.Text = dt.Rows[0]["address"].ToString();
                selectState.Text = dt.Rows[0]["state"].ToString();                
                textCity.Text = dt.Rows[0]["city"].ToString();
                textPinCode.Text = dt.Rows[0]["pin_code"].ToString();
                inputPhone.Text = dt.Rows[0]["phone_no"].ToString();
                altPhoneNo.Text = dt.Rows[0]["alt_phone_no"].ToString();
                inputEmail.Text = dt.Rows[0]["email"].ToString();
                //selectStatus.Text = dt.Rows[0]["status"].ToString();
                profile_image.ImageUrl= dt.Rows[0]["image"].ToString(); 
                ViewState["image"] = dt.Rows[0]["image"].ToString();
                ViewState["role"] = dt.Rows[0]["role"].ToString();
                ViewState["file"] = dt.Rows[0]["user_file"].ToString();
                ViewState["status"] = dt.Rows[0]["status"].ToString();
                Div1.Visible = false;
                if (dt.Rows[0]["user_file"].ToString()!="")
                {
                    Div1.Visible = true;
                    resume_file.HRef= dt.Rows[0]["user_file"].ToString();
                }
            }
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
        if (userImage.HasFile)
        {
            ViewState["image"] = verma.File_Upload_Html(userImage);
        }
        if (ViewState["image"]!=null)
        {
            
            if (FileUpload1.HasFile)
            {
                ViewState["file"] = verma.File_Upload_Html(FileUpload1);
            }
            verma.Save_Data("update users set name='" + inputName.Text + "',image='" + ViewState["image"] + "',user_file='" + ViewState["file"] + "',status='" + ViewState["status"] + "',department_id='" + departments.Text + "',industry_id='" + selectIndustry.Text + "',role='" + ViewState["role"] + "',email='" + inputEmail.Text + "',phone_no='" + inputPhone.Text + "',alt_phone_no='" + altPhoneNo.Text + "',address='" + address.Text + "',state='" + selectState.Text + "',city='" + textCity.Text + "',pin_code='" + textPinCode.Text + "'where id='" + verma.Get_Uid() + "'");
            lable_data.Visible = true;
            lable_data.Attributes.Add("class", "alert alert-success alert-dismissible fade show");
            lable_msg.Text = "Account has been updated sucessfully";
            Response.Redirect("profile.aspx");
            //ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", verma.message_empty("Industries has Been added Successfully!"), true);
        }
        else
        {
            lable_data.Visible = true;
            lable_data.Attributes.Add("class", "alert alert-danger alert-dismissible fade show");
            lable_msg.Text = "Upload the image!";
        }
    }
    protected void departments_SelectedIndexChanged(object sender, EventArgs e)
    {
        industryData();
    }
    public void industryData()
    {
        verma.Fill_Combo_Not_Empty("select * from industries where status=1 and department_id='" + departments.SelectedItem.Value + "'", selectIndustry);
    }
    protected void btnTest_Click(object sender, EventArgs e)
    {
        lable_data.Visible = false;
    }
}