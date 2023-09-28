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
        dt = verma.Show_Data("Select * from users where id='" + Request.QueryString["id"] + "'");
        if (dt.Rows.Count > 0)
        {
            title_msg.Text = "Edit User";
            inputName.Text = dt.Rows[0]["name"].ToString();
            departments.Text = dt.Rows[0]["department_id"].ToString();
            
            address.Text = dt.Rows[0]["address"].ToString();
            selectState.Text = dt.Rows[0]["state"].ToString();
            textCity.Text = dt.Rows[0]["city"].ToString();
            textPinCode.Text = dt.Rows[0]["pin_code"].ToString();
            inputPhone.Text = dt.Rows[0]["phone_no"].ToString();
            altPhoneNo.Text = dt.Rows[0]["alt_phone_no"].ToString();
            inputEmail.Text = dt.Rows[0]["email"].ToString();
            selectStatus.Text = dt.Rows[0]["status"].ToString();
            ViewState["image"] = dt.Rows[0]["image"].ToString();
            ViewState["file"] = dt.Rows[0]["user_file"].ToString();
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
        DataTable dt = new DataTable();
        dt = verma.Show_Data("Select TOP 1 * from users where email='" + inputEmail.Text + "'");
        Random rand = new Random();
        int num = rand.Next(111, 999);
        string userid = "A2ZI" + DateTime.Now.Year + DateTime.Now.Month + DateTime.Now.Day + num;

        int password = rand.Next(111111, 999999);
            if (Request.QueryString["id"] != null)
            {
                if (dt.Rows.Count == 0 || dt.Rows[0]["id"].ToString() == Request.QueryString["id"])
                {
                    if (userImage.HasFile)
                    {
                    ViewState["image"] = verma.File_Upload_Html(userImage);
                    }
                    if (FileUpload1.HasFile)
                    {
                    ViewState["file"] = verma.File_Upload_Html(FileUpload1);
                    }
                        verma.Save_Data("update users set name='" + inputName.Text + "',image='" + ViewState["image"] + "',user_file='" + ViewState["file"] + "',status='" + selectStatus.Text + "',department_id='" + departments.Text + "',email='" + inputEmail.Text + "',phone_no='" + inputPhone.Text + "',alt_phone_no='" + altPhoneNo.Text + "',address='" + address.Text + "',state='" + selectState.Text + "',city='" + textCity.Text + "',pin_code='" + textPinCode.Text + "'where id='" + Request.QueryString["id"] + "'");
                        lable_data.Visible = true;
                        lable_data.Attributes.Add("class", "alert alert-success alert-dismissible fade show");
                        lable_msg.Text = "User has been updated sucessfully";
                        Response.Redirect("index.aspx");
                }
                else
                {
                    lable_data.Visible = true;
                    lable_data.Attributes.Add("class", "alert alert-danger alert-dismissible fade show");
                    lable_msg.Text = "Email Already Exists!";
                }
            }
            else
            {
                if (dt.Rows.Count == 0)
                {
                    if (userImage.HasFile != false)
                        {
                            verma.Save_Data("insert into users values ('" + inputName.Text + "','" + password + "','" + verma.File_Upload_Html(userImage) + "','" + verma.File_Upload_Html(FileUpload1) + "','" + selectStatus.Text + "','" + departments.Text + "','" + verma.Get_ind() + "','User','" + inputEmail.Text + "','" + inputPhone.Text + "','" + altPhoneNo.Text + "','" + address.Text + "','" + selectState.Text + "','" + textCity.Text + "','" + textPinCode.Text + "','" + DateTime.Now + "','"+ userid + "')");
                            lable_data.Visible = true;
                            lable_data.Attributes.Add("class", "alert alert-success alert-dismissible fade show");
                            lable_msg.Text = "User has Been added Successfully!";
                         //ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", verma.message_empty("Industries has Been added Successfully!"), true);
                        }
                    else
                        {
                        lable_data.Visible = true;
                        lable_data.Attributes.Add("class", "alert alert-danger alert-dismissible fade show");
                        lable_msg.Text = "Upload the image of User!";
                        }
               
                }
                    else
                    {
                        lable_data.Visible = true;
                        lable_data.Attributes.Add("class", "alert alert-danger alert-dismissible fade show");
                        lable_msg.Text = "Email Already Exists!";
                    }

        }
        

    }


    protected void btnTest_Click(object sender, EventArgs e)
    {
        lable_data.Visible=false;
    }

}