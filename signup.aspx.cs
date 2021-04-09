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
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SignupButton_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Photostudiodb"].ConnectionString);
            conn.Open();
            String str = "SELECT* FROM USERS WHERE Email=@email";
            SqlCommand cmd = new SqlCommand(str, conn);
            cmd.Parameters.AddWithValue("@email", SignupEmailTextBox.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            int i = cmd.ExecuteNonQuery();
            conn.Close();
            if (dt.Rows.Count > 0)
            {

                registrationlb.Text = "You are already Registered.";
            }
            else
            {
                SqlConnection connn = new SqlConnection(ConfigurationManager.ConnectionStrings["Photostudiodb"].ConnectionString);
                connn.Open();
                String strr = "INSERT INTO USERS (UserName,Gender,Address,Contact,Email,Password) VALUES ('" + SignupNameTextBox.Text + "','" + SignupGenderRadioButtonList.SelectedItem.Text + "','" + SignupAddressTextBox.Text + "','" + SignupContactTextBox.Text + "','" + SignupEmailTextBox.Text + "','" + SignupPasswordTextBox.Text + "')";
                SqlCommand cmmd = new SqlCommand(strr, connn);
                int a = cmmd.ExecuteNonQuery();
                if (i != 0)
                {
                    string query = "IF OBJECT_ID('dbo." + SignupEmailTextBox.Text + "', 'U') IS NULL ";
                    query += "BEGIN ";
                    query += "CREATE TABLE [dbo].[" + SignupEmailTextBox.Text + "] (";
                    query += "[Id] INT NOT NULL PRIMARY KEY IDENTITY,";
                    query += "[ProductName] NCHAR(20) NOT NULL,";
                    query += "[Description] NCHAR(250) NOT NULL,";
                    query += "[Price] MONEY NOT NULL,";
                    query += "[Quantity] INT NOT NULL,";
                    query += "[OrderStatus] NCHAR(20) NULL";
                    query += ")";
                    query += " END";
                    string constr = ConfigurationManager.ConnectionStrings["Photostudiodb"].ConnectionString;
                    using (SqlConnection connnn = new SqlConnection(constr))
                    {
                        using (SqlCommand cmmmd = new SqlCommand(query))
                        {
                            cmmmd.Connection = connnn;
                            connnn.Open();
                            cmmmd.ExecuteNonQuery();
                            connnn.Close();
                        }
                    }
                    registrationlb.Text = "Sucessfully Registered. Please Login.";
                }
                connn.Close();
            }
        }
    }
}