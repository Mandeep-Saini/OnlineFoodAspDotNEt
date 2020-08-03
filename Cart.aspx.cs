using OnlineFoodDelivery.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineFoodDelivery
{
	public partial class Cart : System.Web.UI.Page
	{
		private CartItemList cart;
		string constring = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

		protected void Page_Load(object sender, EventArgs e)
		{
			cart = CartItemList.GetCart(); // get on all postbacks

			if (!IsPostBack) // do on initial load
			{
				//Master.
				//Master.HeaderText = "Your Shopping Cart";

				//Master.AddBreadcrumbLink("/Order.aspx", "Home");
				//Master.AddCurrentPage("Cart");

				this.DisplayCart();
			};
		}

		private void DisplayCart()
		{
			lstCart.Items.Clear();
			CartItem item;

			for (int i = 0; i < cart.Count; i++)
			{
				item = cart[i];
				lstCart.Items.Add(item.Display());
			}
		}

		protected void btnRemove_Click(object sender, EventArgs e)
		{
			if (cart.Count > 0)
			{
				if (lstCart.SelectedIndex > -1)
				{
					cart.RemoveAt(lstCart.SelectedIndex);
					this.DisplayCart();
				}
				else
				{
					lblMessage.Text = "Please select the item you want to remove.";
				}
			}
		}

		protected void btnEmpty_Click(object sender, EventArgs e)
		{
			if (cart.Count > 0)
			{
				cart.Clear();
				lstCart.Items.Clear();
			}
		}

		protected void btnCheckOut_Click(object sender, EventArgs e)
		{
			SqlConnection con = new SqlConnection(constring);
			con.Open();
			SqlCommand cm = con.CreateCommand();
			cm.CommandType = CommandType.Text;
			cm.CommandText = "insert into CheckOut(DeliveryAddress) values('" + delAdd.Text + "')";
			cm.ExecuteNonQuery();
			delAdd.Text = "";
			con.Close();
			
			lblMessage.Text = "Your order is on your way";
		}
	}
}
