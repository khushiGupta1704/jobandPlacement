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

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        showPopupData();
        if (!IsPostBack)
        {
            Repeater1.DataSource = verma.Show_Data("SELECT jobs.*, departments.title as depart_title FROM jobs INNER JOIN departments ON jobs.department_id = departments.id where jobs.industry_id='" + verma.Get_ind() + "'");
            Repeater1.DataBind();
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

        ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup();", true);

    }

    protected void hide_popUp_Click(object sender, EventArgs e)
    {
        ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup();", false);
    }
    protected void confirm_delete_Click(object sender, EventArgs e)
    {
        foreach (RepeaterItem r in Repeater1.Items)
        {
            CheckBox chk = (CheckBox)r.FindControl("delete_checkbox");
            Label lblid = (Label)r.FindControl("lblUniqueID");
            if (chk.Checked)
            {
                verma.Save_Data("delete from jobs where id='" + lblid.Text + "'");
                lable_data.Visible = true;
                lable_data.Attributes.Add("class", "alert alert-success alert-dismissible fade show");
                lable_msg.Text = "Job has Been Deleted Successfully!";
            }
        }
        Repeater1.DataSource = verma.Show_Data("SELECT jobs.*, departments.title as depart_title,industries.name as inustry_title FROM jobs INNER JOIN departments ON jobs.department_id = departments.id INNER JOIN industries ON jobs.industry_id = industries.id");
        Repeater1.DataBind();
    }
    protected void btnTest_Click(object sender, EventArgs e)
    {
        lable_data.Visible = false;
    }
    protected void confirm_delete_2_Click(object sender, CommandEventArgs e)
    {

                verma.Save_Data("delete from jobs where id='" + e.CommandArgument + "'");
                lable_data.Visible = true;
                lable_data.Attributes.Add("class", "alert alert-success alert-dismissible fade show");
                lable_msg.Text = "Job has Been Deleted Successfully!";
          
        Repeater1.DataSource = verma.Show_Data("SELECT jobs.*, departments.title as depart_title,industries.name as inustry_title FROM jobs INNER JOIN departments ON jobs.department_id = departments.id INNER JOIN industries ON jobs.industry_id = industries.id");
        Repeater1.DataBind();
    }
}