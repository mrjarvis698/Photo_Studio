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
    public partial class products : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow gr = GridView1.SelectedRow;
            string Id = gr.Cells[0].Text;
            string ProductName = gr.Cells[1].Text;
            string Price = gr.Cells[2].Text;
            ProductNameSqlLabel.Text = ProductName;
            ProductPriceSqlLabel.Text = Price;

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Photostudiodb"].ConnectionString);
            conn.Open();
            String str = "SELECT* FROM PRODUCTS WHERE ProductName=@name";
            SqlCommand cmd = new SqlCommand(str, conn);
            cmd.Parameters.AddWithValue("@name", gr.Cells[1].Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            int i = cmd.ExecuteNonQuery();
            conn.Close();
            if (dt.Rows.Count > 0)
            {
                SqlConnection connn = new SqlConnection(ConfigurationManager.ConnectionStrings["Photostudiodb"].ConnectionString);
                connn.Open();
                SqlCommand cmdd = new SqlCommand("SELECT Description from PRODUCTS where Id=" + gr.Cells[0].Text, connn);
                using (SqlDataReader sdr = cmdd.ExecuteReader())
                {
                    sdr.Read();
                    ProductDescriptionSqlLabel.Text = sdr["Description"].ToString();
                }

                connn.Close();
            }
        }

        protected void AddToCartButton_Click(object sender, EventArgs e)
        {

        }
    }
}