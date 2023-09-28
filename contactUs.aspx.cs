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

public partial class contactUs : System.Web.UI.Page
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

    protected void button_submit_Click(object sender, EventArgs e)
    {
        if (contactName.Text != "" && contactEmail.Text != "" && contactMessage.Text != "" )
        {
        
                //verma.Save_Data("insert into meta_description values ('" + contactName.Text + "','" + contactEmail.Text + "','" + contactMessage.Text + "')");
            verma.Save_Data("insert into inquiry values ('" + contactName.Text + "','" + contactEmail.Text + "','" + inputPhone.Text + "','" + address.Text + "','" + selectState.Text + "','" + textCity.Text + "','" + textPinCode.Text + "','" + inputSubject.Text + "','1','" + contactMessage.Text + "','" + DateTime.Now + "')");
            lable_msg.Visible = true;
            lable_msg.Text = "Thankyou for contacting Us.We will reply You soon!";
        }
       
    }
}