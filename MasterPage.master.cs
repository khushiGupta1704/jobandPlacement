using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            verma.checkadmin();
            DataTable dt = new DataTable();
            dt = verma.Show_Data("select * from admins where id = '" + verma.Get_admin() + "'");
            
                if (dt.Rows.Count > 0)
                {
                   
                    profile_image.ImageUrl = dt.Rows[0]["image"].ToString();
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
