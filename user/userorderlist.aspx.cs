using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Photo_Studio.user
{
    public partial class userorderlist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                Master.Username.Text = "Welcome -" + Session["Username"];
                Master.login.Visible = false;
                Master.Signup.Visible = false;
                Master.Logout.Visible = true;

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Photostudiodb"].ConnectionString);
                conn.Open();
                String str = "SELECT* FROM USERS WHERE Email='" + Session["Username"] + "'";
                SqlCommand cmd = new SqlCommand(str, conn);

            }


            SqlConnection connn = new SqlConnection(ConfigurationManager.ConnectionStrings["Photostudiodb"].ConnectionString);
            connn.Open();
            String grid = "SELECT* FROM [dbo].[" + Session["Username"] + "]";
            SqlCommand cmmd = new SqlCommand(grid, connn);
            SqlDataReader rdr = cmmd.ExecuteReader();
            GridView1.DataSource = rdr;
            GridView1.DataBind();
            connn.Close();

        }
    }
}