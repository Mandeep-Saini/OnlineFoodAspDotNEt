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
	public partial class Contact : Page
	{
		string constring = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void save_Click(object sender, EventArgs e)
		{
			SqlConnection con = new SqlConnection(constring);
			con.Open();
			SqlCommand cm = con.CreateCommand();
			cm.CommandType = CommandType.Text;
			cm.CommandText = "insert into ContactInfo(Email,Phone,Message) values('" + txtEmail.Text + "','" + txtPhone.Text + "','" + txtMessage.Text + "')";
			cm.ExecuteNonQuery();
			txtEmail.Text = "";
			txtPhone.Text = "";
			txtMessage.Text = "";
			con.Close();
		}
	}
}