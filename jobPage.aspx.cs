using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Data.SqlClient;
using AjaxControlToolkit.HTMLEditor.ToolbarButton;
using System.Net;
using System.Collections;
using System.Xml.Linq;
using System.Drawing.Printing;
using System.Security.Cryptography;

public partial class jobPage : System.Web.UI.Page
{
    private int PageSize = 1;
    protected void Page_Load(object sender, EventArgs e)
    {
        showPopupData();
        if (!IsPostBack)
        {
            verma.Fill_Combo("select * from departments where status=1", departments);
            verma.Fill_Combo("select * from industries where status=1", selectIndustry);
            DisplayRepeter();
            //
            Repeater1.DataSource = verma.Show_Data("select count(*) as job_count,departments.title as exp1,departments.id as depart_id from jobs INNER JOIN departments ON jobs.department_id = departments.id where jobs.status=1 group by departments.title,departments.id");
            Repeater1.DataBind();
            Repeater2.DataSource = verma.Show_Data("SELECT * FROM tags where page_name='Jobs' and status=1 order by position;");
            Repeater2.DataBind();
            Repeater3.DataSource = verma.Show_Data("SELECT TOP 5 * FROM jobs;");
            Repeater3.DataBind();
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
        dt = verma.Show_Data("SELECT jobs.*, departments.title as depart_title,industries.name as inustry_title FROM jobs INNER JOIN departments ON jobs.department_id = departments.id INNER JOIN industries ON jobs.industry_id = industries.id where jobs.status=1 order by jobs.position");
        JobRepeater.DataSource = dt;
        JobRepeater.DataBind();

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

        JobRepeater.DataSource = pds;
        JobRepeater.DataBind();

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

    }
    protected void search_submit_Click(object sender, EventArgs e)
    {
        if (search_text.Text != "")
        {
            JobRepeater.DataSource = verma.Show_Data("select * from jobs where title like '%" + search_text.Text + "%' or description like '%" + search_text.Text + "%' and status=1 order by position");
            JobRepeater.DataBind();
        }
        else
        {
            JobRepeater.DataSource = verma.Show_Data("SELECT jobs.*, departments.title as depart_title,industries.name as inustry_title FROM jobs INNER JOIN departments ON jobs.department_id = departments.id INNER JOIN industries ON jobs.industry_id = industries.id where jobs.status=1 order by jobs.position");
            JobRepeater.DataBind();
        }
    }
    protected void departments_SelectedIndexChanged(object sender, EventArgs e)
    {
        industryData();
    }
    public void industryData()
    {
        verma.Fill_Combo("select * from industries where status=1 and department_id='" + departments.SelectedItem.Value + "'", selectIndustry);

        JobRepeater.DataSource = verma.Show_Data("SELECT jobs.*, departments.title as depart_title,industries.name as inustry_title FROM jobs INNER JOIN departments ON jobs.department_id = departments.id INNER JOIN industries ON jobs.industry_id = industries.id where jobs.status=1 and jobs.department_id='" + departments.SelectedItem.Value + "'order by jobs.position");
        JobRepeater.DataBind();

    }
    protected void industry_SelectedIndexChanged(object sender, EventArgs e)
    {
        blogData();
    }
    public void blogData()
    {
        JobRepeater.DataSource = verma.Show_Data("SELECT jobs.*, departments.title as depart_title,industries.name as inustry_title FROM jobs INNER JOIN departments ON jobs.department_id = departments.id INNER JOIN industries ON jobs.industry_id = industries.id where jobs.status=1 and jobs.department_id='" + departments.SelectedItem.Value + "' and jobs.industry_id='" + selectIndustry.SelectedItem.Value + "'order by position");
        JobRepeater.DataBind();
    }
    protected void experience_SelectedIndexChanged(object sender, EventArgs e)
    {
        string query= "SELECT jobs.*, departments.title as depart_title,industries.name as inustry_title FROM jobs INNER JOIN departments ON jobs.department_id = departments.id INNER JOIN industries ON jobs.industry_id = industries.id where jobs.status=1";
        string order = "order by jobs.position";
        if (selectExperience.SelectedItem.Value!="")
        {
            query += " and experience = '" + selectExperience.SelectedItem.Value + "'";
        }
        if (departments.SelectedItem.Value!="")
        {
            query   += " and jobs.department_id='" + departments.SelectedItem.Value + "'";
        }
        if (selectIndustry.SelectedItem.Value != "")
        {
            query += " and jobs.industry_id='" + selectIndustry.SelectedItem.Value + "'";
        }
        if (selectWorkMode.SelectedItem.Value != "")
        {
            query += " and jobs.work_mode='" + selectWorkMode.SelectedItem.Value + "'";
        }
        if (textsalary.Text!="")
        {
            query += " and jobs.salary='" + textsalary.Text + "'";
        }
        if (textqualification.Text!="")
        {
            query += " and jobs.qualification='" + textqualification.Text + "'";
        }
        string originalQuery = query + order;
        JobRepeater.DataSource = verma.Show_Data(originalQuery);
        JobRepeater.DataBind();

    }

    protected void apply_button_Click(object sender, CommandEventArgs e)
    {
        if (verma.Get_Uid()!="")
        {
            DataTable dt = new DataTable();
            dt = verma.Show_Data("select * from users where id='" + verma.Get_Uid() + "'");
            if (dt.Rows.Count > 0)
            {
                if (dt.Rows[0]["user_file"].ToString() != "")
                {
                    verma.Save_Data("insert into user_job_apply values ('" + e.CommandArgument + "','"+ verma.Get_Uid()+"','" + DateTime.Now + "')");
                    JobRepeater.DataSource = verma.Show_Data("SELECT jobs.*, departments.title as depart_title,industries.name as inustry_title FROM jobs INNER JOIN departments ON jobs.department_id = departments.id INNER JOIN industries ON jobs.industry_id = industries.id where jobs.status=1 order by jobs.position");
                    JobRepeater.DataBind();
                }
                else
                {
                    Response.Redirect("profile.aspx");
                }
            }
            else
            {
                Response.Redirect("register.aspx");
            }
        }
        else
        {
            Response.Redirect("login.aspx");
        }
    }
    protected void JobRepeater_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        string id = ((Label)e.Item.FindControl("job_id")).Text;
        DataTable dt = new DataTable();
        dt = verma.Show_Data("select * from user_job_apply where job_id='" + id + "' and user_id='" + verma.Get_Uid() +"'");
        if (dt.Rows.Count > 0)
        {
            ((Button)e.Item.FindControl("apply_button")).Text = "Applied";
            ((Button)e.Item.FindControl("apply_button")).Enabled = false;

        }
    }




    protected void HyperLink1_Command(object sender, CommandEventArgs e)
    {
        string query = "SELECT jobs.*, departments.title as depart_title,industries.name as inustry_title FROM jobs INNER JOIN departments ON jobs.department_id = departments.id INNER JOIN industries ON jobs.industry_id = industries.id where jobs.status=1  and jobs.department_id='" + e.CommandArgument + "'";
        string order = "order by jobs.position";
        string originalQuery = query + order;
        JobRepeater.DataSource = verma.Show_Data(originalQuery);
        JobRepeater.DataBind();
    }
}