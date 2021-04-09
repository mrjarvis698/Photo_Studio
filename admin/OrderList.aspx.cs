using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Photo_Studio.admin
{
    public partial class OrderList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow gr = GridView1.SelectedRow;
            string Email = gr.Cells[3].Text;
            SqlConnection connn = new SqlConnection(ConfigurationManager.ConnectionStrings["Photostudiodb"].ConnectionString);
            connn.Open();
            using (SqlCommand cmmd = new SqlCommand("SELECT ID,ProductName,Description,Price from [dbo].[" + Email + "]"))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmmd.Connection = connn;
                    sda.SelectCommand = cmmd;
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        GridView2.DataSource = dt;
                        GridView2.DataBind();
                    }
                }
            }
            connn.Close();
        }
    }
}