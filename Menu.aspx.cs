using OnlineFoodDelivery.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineFoodDelivery
{
	public partial class Menu : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}
		protected void btnAdd_Click(object sender, EventArgs e)
		{
			if (IsValid)
			{
				Product selectedProduct = GetSelectedProduct();
				CartItemList cart = CartItemList.GetCart();
				CartItem cartItem = cart[selectedProduct.ProductId];

				if (cartItem == null)
				{
					cart.AddItem(selectedProduct, Convert.ToInt32(txtQuantity.Text));
				}
				else
				{
					cartItem.AddQuantity(Convert.ToInt32(txtQuantity.Text));
				}
				Response.Redirect("Cart.aspx");
			}
		}

		private Product GetSelectedProduct()
		{
			// get row from SqlDataSource based on value in dropdownlist
			DataView productsTable = (DataView)
				SqlDataSourceProduct.Select(DataSourceSelectArguments.Empty);
			DataRowView row = productsTable[0];

			// create a new product object and load with data from row
			Product p = new Product();
			p.ProductId = row["ProductId"].ToString();
			p.ProductName = row["ProductName"].ToString();
			p.Description = row["Description"].ToString();
			p.Price = (decimal)row["Price"];
			p.ProductImage = row["ProductImage"].ToString();
			return p;
		}
	}
}
