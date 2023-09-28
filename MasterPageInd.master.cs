using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPageInd : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            verma.checkIndustry();
            DataTable dt1 = new DataTable();
            dt1 = verma.Show_Data("select * from industries where id='" + verma.Get_ind() + "'");
            if (dt1.Rows.Count > 0)
            {
                profile_image.ImageUrl = dt1.Rows[0]["image"].ToString();
            }
        }
    }
    protected void logout_button_Click(object sender, EventArgs e)
    {
        Response.Cookies["user_id"].Expires = DateTime.Now.AddHours(-1);
        Response.Cookies["user_id"].Value = "";
        Response.Cookies["ind_id"].Expires = DateTime.Now.AddHours(-1);
        Response.Cookies["ind_id"].Value = "";
        Response.Cookies["admin_id"].Expires = DateTime.Now.AddHours(-1);
        Response.Cookies["admin_id"].Value = "";
        Response.Redirect("http://localhost:55500/Home");
    }
}
