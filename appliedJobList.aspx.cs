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

public partial class appliedJobList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        showPopupData();
        if (!IsPostBack)
        {
            verma.Fill_Combo("select * from jobs where industry_id='"+verma.Get_ind ()+ "'and status=1", jobs);
        }
        if (!IsPostBack)
        {
            Repeater1.DataSource = verma.Show_Data("SELECT jobs.title as job_title, users.name as user_name, users.user_file FROM jobs INNER JOIN user_job_apply ON jobs.id = user_job_apply.job_id INNER JOIN users ON user_job_apply.user_id = users.id where jobs.industry_id='" + verma.Get_ind()+"'");
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

    }

   
   
    //protected void btnTest_Click(object sender, EventArgs e)
    //{
    //    lable_data.Visible = false;
    //}
    protected void job_SelectedIndexChanged(object sender, EventArgs e)
    {
     jobData();
    }
    public void jobData()
    {
        if (jobs.SelectedItem.Value!="")
        {
            Repeater1.DataSource = verma.Show_Data("SELECT jobs.title as job_title, users.name as user_name, users.user_file FROM jobs INNER JOIN user_job_apply ON jobs.id = user_job_apply.job_id INNER JOIN users ON user_job_apply.user_id = users.id where jobs.industry_id='" + verma.Get_ind() + "'and jobs.id='" + jobs.SelectedItem.Value + "' ");
            Repeater1.DataBind();
        }
        
        else
        {
            Repeater1.DataSource = verma.Show_Data("SELECT jobs.title as job_title, users.name as user_name, users.user_file FROM jobs INNER JOIN user_job_apply ON jobs.id = user_job_apply.job_id INNER JOIN users ON user_job_apply.user_id = users.id where jobs.industry_id='" + verma.Get_ind()+"'");
            Repeater1.DataBind();
        }
        
    }
}