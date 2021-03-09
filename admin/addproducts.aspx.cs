using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Photo_Studio.admin
{
    public partial class addproducts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Photostudiodb"].ConnectionString);
            conn.Open();
            String str = "INSERT INTO PRODUCTS (productname,productdescription,productprice) VALUES ('" + AddProductNameTextBox.Text + "','" + AddProductDescriptionTextBox.Text + "','" + AddProductPriceTextBox.Text + "')";
            SqlCommand cmd = new SqlCommand(str, conn);
            int OBJ = Convert.ToInt32(cmd.ExecuteNonQuery());
            if (OBJ > 0)
            {
                AddLabel.Text = "Sucessfully Registered";
            }
            else
            {
                AddLabel.Text = "Registration Failed";
            }

            conn.Close();
        }
    }
}