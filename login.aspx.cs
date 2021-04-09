using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


namespace Photo_Studio
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Photostudiodb"].ConnectionString);
            conn.Open();
            String str = "SELECT* FROM USERS WHERE Email=@email AND Password=@password";
            String Admin = "mrjarvis698@gmail.com";
            SqlCommand cmd = new SqlCommand(str, conn);
            cmd.Parameters.AddWithValue("@email", LoginEmailTextBox.Text);
            cmd.Parameters.AddWithValue("@password", LoginPasswordTextBox.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            int i = cmd.ExecuteNonQuery();
            conn.Close();
            if (dt.Rows.Count > 0)
            {
                if (LoginEmailTextBox.Text == Admin)
                {
                    Session["Username"] = LoginEmailTextBox.Text;
                    Response.Redirect("~/admin/AdminHome.aspx");
                }
                else
                {
                    Session["Username"] = LoginEmailTextBox.Text;
                    Response.Redirect("~/user/userwelcome.aspx"); 
                }
            }
            else
            {
                LoginLabel.Text = "Incorrect Details / Please Register.";
            }
        }
    }
}