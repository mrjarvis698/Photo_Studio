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
    public partial class useraccount : System.Web.UI.Page
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
            SqlCommand cmdd = new SqlCommand("SELECT* from USERS where Email='" + Session["Username"] + "'", connn);
            using (SqlDataReader sdr = cmdd.ExecuteReader())
            {
                sdr.Read();
                MyAccountUsernameLabel.Text = sdr["UserName"].ToString();
                MyAccountGenderLabel.Text = sdr["Gender"].ToString();
                MyAccountAddressLabel.Text = sdr["Address"].ToString();
                MyAccountContactLabel.Text = sdr["Contact"].ToString();
                MyAccountEmailLabel.Text = sdr["Email"].ToString();
            }

            connn.Close();
        }
    }
}