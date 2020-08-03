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
	public partial class Login : System.Web.UI.Page
	{
		string constring = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void btnSave_Click(object sender, EventArgs e)
		{
			SqlConnection con = new SqlConnection(constring);
			con.Open();
			string query = "select count(Email) from UserInfo where Email= '" + email.Text + "'";
			SqlCommand cmd = new SqlCommand(query, con);

			string iemail = cmd.ExecuteScalar().ToString();


			if (iemail == "1")
			{
				Label1.Text = "Email Already Exists";
			}
			else
			{
				SqlCommand cm = con.CreateCommand();
				cm.CommandType = CommandType.Text;
				cm.CommandText = "insert into UserInfo(Email,Password,IsAdmin) values('" + email.Text + "','" + password.Text + "','0')";
				cm.ExecuteNonQuery();
				email.Text = "";
				password.Text = "";
				confirmPassword.Text = "";
				Label1.Text = "Successfully Register";
			}
			con.Close();
		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			if (Page.IsValid)
			{
				SqlConnection con = new SqlConnection(constring);
				con.Open();
				string query = "select * from UserInfo where Email='" + txtEmail.Text + "'";
				SqlCommand cmd = new SqlCommand(query, con);

				using (SqlDataAdapter da = new SqlDataAdapter(cmd))
				{
					DataTable dt = new DataTable();
					da.Fill(dt);
					string pass=dt.Rows[0]["Password"].ToString();
					bool isadmin = (bool)dt.Rows[0]["IsAdmin"];
					if(pass==txtPassword.Text)
					{
						if(isadmin==true)
						{
							Response.Redirect("Admin.aspx");
						}
						else
						{
							Response.Redirect("Welcome.aspx");
						}
					}
					else
					{
						label2.Text = "Invalid Email or Password";
					}
				}
			}
		}
	}
}