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
    public partial class usercheckout : System.Web.UI.Page
    {

        private decimal totalprice = (decimal)0.0;
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
                UserCheckoutUsernameLabel.Text = sdr["UserName"].ToString();
                UserCheckoutGenderLabel.Text = sdr["Gender"].ToString();
                UserCheckoutShippingAddressLabel.Text = sdr["Address"].ToString();
                UserCheckoutContactLabel.Text = sdr["Contact"].ToString();
                UserCheckoutEmailLabel.Text = sdr["Email"].ToString();
            }

            connn.Close();

            if (!this.IsPostBack)
            {
                this.BindGrid();
            }

        }
        private void BindGrid()
        {
            SqlConnection connn = new SqlConnection(ConfigurationManager.ConnectionStrings["Photostudiodb"].ConnectionString);
            connn.Open();
            using (SqlCommand cmmd = new SqlCommand("SELECT* FROM [dbo].[" + Session["Username"] + "]"))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmmd.Connection = connn;
                    sda.SelectCommand = cmmd;
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                    }
                }
            }
            connn.Close();
        }

        protected void OnPageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            this.BindGrid();
        }
        protected void pricedatabound(object sender, GridViewRowEventArgs e)
        { 
            if(e.Row.RowType == DataControlRowType.DataRow)
            {
                totalprice += Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "Price"));
            }
            else if(e.Row.RowType == DataControlRowType.Footer)
            {
                TotalPriceLabel.Text = String.Format("{0:c}", totalprice);
            }
        }
    }
}