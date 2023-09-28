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
            verma.Fill_Combo("select * from departments where status=1", departments);
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
        dt = verma.Show_Data("Select * from jobs where id='" + Request.QueryString["id"] + "'");
        if (dt.Rows.Count > 0)
        {
            title_msg.Text = "Edit Job";
            inputName.Text = dt.Rows[0]["title"].ToString();
            departments.Text = dt.Rows[0]["department_id"].ToString();
            //selectIndustry.Text = dt.Rows[0]["industry_id"].ToString();
            selectExperience.Text = dt.Rows[0]["experience"].ToString();
            selectWorkMode.Text = dt.Rows[0]["work_mode"].ToString();
            textqualification.Text = dt.Rows[0]["qualification"].ToString();
            textsalary.Text = dt.Rows[0]["salary"].ToString();
            textSkills.Text = dt.Rows[0]["skills"].ToString();
            textEmployee.Text = dt.Rows[0]["no_of_employee"].ToString();
            textUrl.Text = dt.Rows[0]["url"].ToString();
            inputPosition.Text = dt.Rows[0]["position"].ToString();
            selectStatus.Text = dt.Rows[0]["status"].ToString();
            textDescription.Text = dt.Rows[0]["description"].ToString();
            textMetaTitle.Text = dt.Rows[0]["meta_title"].ToString();
            textMetaTag.Text = dt.Rows[0]["meta_tag"].ToString();
            meta_description.Text = dt.Rows[0]["meta_description"].ToString();
            ViewState["image"] = dt.Rows[0]["image"].ToString();
            ViewState["file"] = dt.Rows[0]["job_file"].ToString();
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
            string str3 = textSkills.Text;
            string str4 = Server.HtmlEncode(str3);
            string str5 = Server.HtmlDecode(str4);
        if (Request.QueryString["id"] != null)
            {
            if (jobImage.HasFile)
            {
                ViewState["image"] = verma.File_Upload_Html(jobImage);
            }
            if (FileUpload1.HasFile)
            {
                ViewState["file"] = verma.File_Upload_Html(FileUpload1);
            }
            verma.Save_Data("update jobs set title='" + inputName.Text + "',image='" + ViewState["image"] + "',department_id='"+ departments.Text + "',experience='" + selectExperience.Text + "',work_mode='" + selectWorkMode.Text + "',qualification='" + textqualification.Text + "',salary='" + textsalary.Text + "',skills='" + str5 + "',no_of_employee='"+ textEmployee.Text + "',position='" + inputPosition.Text + "',status='" + selectStatus.Text + "',url='"+ textUrl.Text + "',job_file='" + ViewState["file"] + "',description='" + str2 + "',meta_title='"+ textMetaTitle.Text + "',meta_tag='"+ textMetaTag.Text + "',meta_description='" + meta_description.Text + "'where id='" + Request.QueryString["id"] + "'");
                lable_data.Visible = true;
            lable_data.Attributes.Add("class", "alert alert-success alert-dismissible fade show");
            lable_msg.Text = "Job has been updated sucessfully";
                Response.Redirect("index.aspx");
            }
            else
            {
                if (jobImage.HasFile != false)
                {
                    verma.Save_Data("insert into jobs values ('" + inputName.Text + "','" + verma.File_Upload_Html(jobImage) + "','" + departments.Text + "','" + verma.Get_ind() + "','" + selectExperience.Text + "','" + selectWorkMode.Text + "','" + textqualification.Text + "','" + textsalary.Text + "','" + str5 + "','" + textEmployee.Text + "','" + inputPosition.Text + "','" + selectStatus.Text + "','"+ textUrl.Text + "','" + verma.File_Upload_Html(FileUpload1) + "','" + str2 + "','" + textMetaTitle.Text + "','" + textMetaTag.Text + "','" + meta_description.Text + "','" + DateTime.Now + "')");
                    lable_data.Visible = true;
                    lable_data.Attributes.Add("class", "alert alert-success alert-dismissible fade show");
                    lable_msg.Text = "Job has Been added Successfully!";
                 //ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", verma.message_empty("Industries has Been added Successfully!"), true);
                }
                else
                {
                lable_data.Visible = true;
                lable_data.Attributes.Add("class", "alert alert-danger alert-dismissible fade show");
                lable_msg.Text = "Upload the image of job!";
                }
                
            }


}


    protected void btnTest_Click(object sender, EventArgs e)
    {
        lable_data.Visible=false;
    }

}