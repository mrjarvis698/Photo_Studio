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
            String str = "INSERT INTO USERS (UserName,Address,Contact,Email,Password) VALUES ('" + SignupNameTextBox.Text + "','" + SignupAddressTextBox.Text + "','" + SignupContactTextBox.Text + "','" + SignupEmailTextBox.Text + "','" + SignupPasswordTextBox.Text + "')";
            SqlCommand cmd = new SqlCommand(str, conn);
            int OBJ = Convert.ToInt32(cmd.ExecuteNonQuery());
            if (OBJ > 0)
            {
                string query = "IF OBJECT_ID('dbo." + SignupEmailTextBox.Text + "', 'U') IS NULL ";
                query += "BEGIN ";
                query += "CREATE TABLE [dbo].[" + SignupEmailTextBox.Text + "] (";
                query += "[Id] INT NOT NULL PRIMARY KEY IDENTITY,";
                query += "[ProductName] NCHAR(20) NOT NULL,";
                query += "[Description] NCHAR(250) NOT NULL,";
                query += "[Price] MONEY NOT NULL,";
                query += "[Quantity] INT NOT NULL";
                query += ")";
                query += " END";
                string constr = ConfigurationManager.ConnectionStrings["Photostudiodb"].ConnectionString;
                using (SqlConnection connn = new SqlConnection(constr))
                {
                    using (SqlCommand cmmd = new SqlCommand(query))
                    {
                        cmmd.Connection = connn;
                        connn.Open();
                        cmmd.ExecuteNonQuery();
                        connn.Close();
                    }
                }

                registrationlb.Text = "Sucessfully Registered. Please Login.";
            }
            else
            {
                registrationlb.Text = "Registration Failed";
            }
            conn.Close();
        }
    }
}