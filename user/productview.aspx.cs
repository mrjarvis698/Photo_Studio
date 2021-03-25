using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Photo_Studio.user
{
    public partial class productview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Text = Request.QueryString["Id"].ToString();
            Label1.Text = Request.QueryString["Name"].ToString();
            Label4.Text = Request.QueryString["Price"].ToString();

        }
    }
}