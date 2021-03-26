using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Photo_Studio
{
    public partial class UserNested : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public Label Username
        {
            get
            {
                return this.UsernameLabel;
            }
        }
        public LinkButton Signup
        {
            get
            {
                return this.SignupButton;
            }
        }
        public LinkButton login
        {
            get
            {
                return this.LoginButton;
            }
        }
        public LinkButton Logout
        {
            get
            {
                return this.LogoutButton;
            }
        }
    }
}