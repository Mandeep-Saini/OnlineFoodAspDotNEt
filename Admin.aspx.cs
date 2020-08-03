using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineFoodDelivery
{
	public partial class Admin : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			

		}
		protected void GridProduct_PreRender(object sender, EventArgs e)
		{
			if (GridProduct.HeaderRow != null)
				GridProduct.HeaderRow.TableSection = TableRowSection.TableHeader;
		}
		protected void btnAddProduct_Click(object sender, EventArgs e)
		{
			if (IsValid)
			{
				string catid= ddlCategory.SelectedValue;
				var parameters = SqlDataSource1.InsertParameters;
				parameters["ProductName"].DefaultValue = txtProductName.Text;
				parameters["Description"].DefaultValue = txtDescription.Text;
				parameters["Price"].DefaultValue = txtPrice.Text;
				parameters["ProductImage"].DefaultValue = img.FileName;
				parameters["NutritionInfo"].DefaultValue = "calories 5 g";
				parameters["CategoryId"].DefaultValue = catid;
				try
				{
					SqlDataSource1.Insert();
					txtProductName.Text = "";
					txtPrice.Text = "";
					txtDescription.Text = "";
				}
				catch (Exception ex)
				{
					lblError.Text = DataBaseErrorMessage(ex.Message);
				}
			}
		}

		private string DataBaseErrorMessage(string message)
		{
			throw new NotImplementedException();
		}

		protected void GridProduct_RowUpdated(object sender, GridViewUpdatedEventArgs e)
		{
			if (e.Exception != null)
			{
				lblError.Text = DatabaseErrorMessage(e.Exception.Message);
				e.ExceptionHandled = true;
				e.KeepInEditMode = true;
			}
			else if (e.AffectedRows == 0)
			{
				lblError.Text = ConcurrencyErrorMessage();
			}
		}

		protected void GridProduct_RowDeleted(object sender, GridViewDeletedEventArgs e)
		{
			if (e.Exception != null)
			{
				lblError.Text = DatabaseErrorMessage(e.Exception.Message);
				e.ExceptionHandled = true;
			}
			else if (e.AffectedRows == 0)
			{
				lblError.Text = ConcurrencyErrorMessage();
			}
		}
		private string DatabaseErrorMessage(string errorMsg)
		{
			return $"<b>A database error has occurred:</b> {errorMsg}";
		}
		private string ConcurrencyErrorMessage()
		{
			return "Another user may have updated that category. " +
			"Please try again";
		}
	}
}
