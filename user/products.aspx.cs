using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
            string Name = gr.Cells[1].Text;
            string Price = gr.Cells[2].Text;
            ProductNameLabel.Text = "Product Name -";
            ProductDescriptionLabel.Text = "Product Description -";
            ProductPriceLabel.Text = "Product Price - ₹";
            QuantityLabel.Text = "Quantity -";
            ProductNameSqlLabel.Text = Name;
            ProductDescriptionSqlLabel.Text = Id;
            ProductPriceSqlLabel.Text = Price;
        }
    }
}