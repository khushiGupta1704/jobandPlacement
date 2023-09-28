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
using System.Net.Sockets;
using System.Net;
using System.Runtime.InteropServices;

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
        dt = verma.Show_Data("Select * from image_gallery where id='" + Request.QueryString["id"] + "'");
        if (dt.Rows.Count > 0)
        {
            title_msg.Text = "Edit Image";
            inputtitle.Text = dt.Rows[0]["title"].ToString(); 
            selectStatus.Text = dt.Rows[0]["status"].ToString();
            inputPosition.Text = dt.Rows[0]["position"].ToString();
            departments.Text = dt.Rows[0]["department_id"].ToString();
            textDescription.Text = dt.Rows[0]["description"].ToString();
            ViewState["image"] = dt.Rows[0]["image"].ToString();


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
            if (galleryImage.HasFile)
            {
                ViewState["image"] = verma.File_Upload_Html(galleryImage);
            }
            verma.Save_Data("update image_gallery set title='" + inputtitle.Text + "',image='" + ViewState["image"] + "',department_id='" + departments.Text + "',position ='" + inputPosition.Text + "',status='" + selectStatus.Text + "',description='" + str2 + "'where id='" + Request.QueryString["id"] + "'");
            lable_data.Visible = true;
            lable_data.Attributes.Add("class", "alert alert-success alert-dismissible fade show");
            lable_msg.Text = "Image has been updated sucessfully";
            Response.Redirect("index.aspx");
        }
        else
        {
            if (galleryImage.HasFile != false) {
                verma.Save_Data("insert into image_gallery values ('" + inputtitle.Text + "','" + verma.File_Upload_Html(galleryImage) + "','" + departments.Text + "','" + verma.Get_ind() + "','" + inputPosition.Text + "','" + selectStatus.Text + "','" + str2 + "','" + DateTime.Now + "')");
                lable_data.Visible = true;
                lable_data.Attributes.Add("class", "alert alert-success alert-dismissible fade show");
                lable_msg.Text = "Image has Been added Successfully!";
            }
            else
            {
                lable_data.Visible = true;
                lable_data.Attributes.Add("class", "alert alert-danger alert-dismissible fade show");
                lable_msg.Text = "Upload the image";
            }
            }

   
}
    protected void btnTest_Click(object sender, EventArgs e)
    {
        lable_data.Visible = false;
    }
   

}