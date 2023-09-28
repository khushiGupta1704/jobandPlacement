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
using AjaxControlToolkit.HTMLEditor.ToolbarButton;
using System.Activities.Expressions;

public partial class userJobs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        showPopupData();
        if (!IsPostBack)
        {
            DisplayRepeter();
            
        }
    }

    public int CurrentPage
    {
        get
        {
            //get current page number
            object obj = this.ViewState["_CurrentPage"];

            if (obj == null)
            {
                return 0;
            }
            else
            {
                return (int)obj;
            }
        }
        set
        {
            //set in viewstate the current page number
            this.ViewState["_CurrentPage"] = value;
        }
    }
    public int DisplayRepeter()
    {
        DataTable dt = new DataTable();
        dt = verma.Show_Data("SELECT jobs.*,jobs.title as job_title,jobs.id as job_id,departments.title as depart_title,industries.name as industry_title FROM user_job_apply INNER JOIN jobs ON user_job_apply.job_id = jobs.id INNER JOIN industries ON jobs.industry_id = industries.id INNER JOIN departments ON jobs.department_id = departments.id AND industries.department_id = departments.id where user_job_apply.user_id = '" + verma.Get_Uid() + "'");
        Repeater1.DataSource = dt;
        Repeater1.DataBind();

        PagedDataSource pds = new PagedDataSource();

        pds.DataSource = dt.DefaultView;
        pds.AllowPaging = true;
        pds.PageSize = 10;
        int count = pds.PageCount;

        pds.CurrentPageIndex = CurrentPage;

        if (pds.Count > 0)
        {
            lbtnPrev.Visible = true;
            lbtnNext.Visible = true;
            lbtnFirst.Visible = true;
            lbtnLast.Visible = true;

            lblStatus.Text = "Page " + Convert.ToString
            (CurrentPage + 1) + "of" + Convert.ToString(pds.PageCount);
        }
        else
        {
            lbtnPrev.Visible = false;
            lbtnNext.Visible = false;
            lbtnFirst.Visible = false;
            lbtnLast.Visible = false;
        }

        lbtnPrev.Enabled = !pds.IsFirstPage;
        lbtnNext.Enabled = !pds.IsLastPage;
        lbtnFirst.Enabled = !pds.IsFirstPage;
        lbtnLast.Enabled = !pds.IsLastPage;

        Repeater1.DataSource = pds;
        Repeater1.DataBind();

        return count;
    }

    protected void lbtnPrev_Click(object sender, EventArgs e)
    {
        CurrentPage -= 1;
        DisplayRepeter();
    }

    protected void lbtnNext_Click(object sender, EventArgs e)
    {
        CurrentPage += 1;
        DisplayRepeter();
    }

    protected void lbtnFirst_Click(object sender, EventArgs e)
    {
        CurrentPage = 0;
        DisplayRepeter();
    }

    protected void lbtnLast_Click(object sender, EventArgs e)
    {
        CurrentPage = DisplayRepeter() - 1;
        DisplayRepeter();
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
                verma.Save_Data("delete from users where id='" + lblid.Text + "'");
                lable_data.Visible = true;
                lable_data.Attributes.Add("class", "alert alert-success alert-dismissible fade show");
                lable_msg.Text = "User has Been Deleted Successfully!";
            }
        }
        Repeater1.DataSource = verma.Show_Data("SELECT users.*, departments.title as depart_title,industries.name as inustry_title FROM users INNER JOIN departments ON users.department_id = departments.id INNER JOIN industries ON users.industry_id = industries.id");
        Repeater1.DataBind();
    }
    protected void btnTest_Click(object sender, EventArgs e)
    {
        lable_data.Visible = false;
    }
    protected void confirm_delete_2_Click(object sender, CommandEventArgs e)
    {

                verma.Save_Data("delete from users where id='" + e.CommandArgument + "'");
                lable_data.Visible = true;
                lable_data.Attributes.Add("class", "alert alert-success alert-dismissible fade show");
                lable_msg.Text = "User has Been Deleted Successfully!";
          
        Repeater1.DataSource = verma.Show_Data("SELECT users.*, departments.title as depart_title,industries.name as inustry_title FROM users INNER JOIN departments ON users.department_id = departments.id INNER JOIN industries ON users.industry_id = industries.id");
        Repeater1.DataBind();
    }
}