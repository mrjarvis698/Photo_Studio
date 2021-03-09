using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Photo_Studio
{
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SignupButton_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Photostudiodb"].ConnectionString);
            conn.Open();
            String str = "INSERT INTO USERS (name,address,contact,email,password) VALUES ('" + SignupNameTextBox.Text + "','" + SignupAddressTextBox.Text + "','" + SignupContactTextBox.Text + "','" + SignupEmailTextBox.Text + "','" + SignupPasswordTextBox.Text + "')";
            SqlCommand cmd = new SqlCommand(str, conn);
            int OBJ = Convert.ToInt32(cmd.ExecuteNonQuery());
            if (OBJ > 0)
            {
                registrationlb.Text = "Sucessfully Registered";
            }
            else
            {
                registrationlb.Text = "Registration Failed";
            }

            conn.Close();
        }
    }
}