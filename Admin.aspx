<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Admin.aspx.cs" Inherits="OnlineFoodDelivery.Admin" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<asp:GridView ID="GridProduct" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductId" DataSourceID="SqlDataSource1"
		AllowSorting="True" OnPreRender="GridProduct_PreRender" CssClass="table table-bordered table-condensed table-hover"
		OnRowDeleted="GridProduct_RowDeleted" OnRowUpdated="GridProduct_RowUpdated" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
		<AlternatingRowStyle BackColor="#DCDCDC" CssClass="alt-row"></AlternatingRowStyle>
		<Columns>
			<asp:BoundField DataField="ProductId" HeaderText="ProductId" ReadOnly="True" SortExpression="ProductId">
				<ItemStyle CssClass="col-xs-1" />
			</asp:BoundField>
			<asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName">
				<ItemStyle CssClass="col-xs-2" />
			</asp:BoundField>
			<asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price">
				<ItemStyle CssClass="col-xs-2" />
			</asp:BoundField>
			<asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description">
				<ItemStyle CssClass="col-xs-2" />
			</asp:BoundField>
			<asp:TemplateField HeaderText="Image">
				<ItemTemplate>
					<asp:Image ID="resultImage" runat="server" Width="100px" ImageUrl='<%# "~/images/" + Eval("ProductImage") %>' />
				</ItemTemplate>
			</asp:TemplateField>
			<asp:CommandField ShowEditButton="True" CausesValidation="False">
				<ItemStyle CssClass="col-xs-1 text-primary" />
			</asp:CommandField>
			<asp:CommandField ShowDeleteButton="True" CausesValidation="False">
				<ItemStyle CssClass="col-xs-1 text-primary" />
			</asp:CommandField>
		</Columns>
		<FooterStyle BackColor="#CCCCCC" ForeColor="Black"></FooterStyle>

		<HeaderStyle BackColor="#000084" ForeColor="White" Font-Bold="True" />
		<PagerStyle HorizontalAlign="Center" BackColor="#999999" ForeColor="Black"></PagerStyle>

		<RowStyle BackColor="#EEEEEE" ForeColor="Black"></RowStyle>

		<SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

		<SortedAscendingCellStyle BackColor="#F1F1F1"></SortedAscendingCellStyle>

		<SortedAscendingHeaderStyle BackColor="#0000A9"></SortedAscendingHeaderStyle>

		<SortedDescendingCellStyle BackColor="#CAC9C9"></SortedDescendingCellStyle>

		<SortedDescendingHeaderStyle BackColor="#000065"></SortedDescendingHeaderStyle>
		<AlternatingRowStyle CssClass="alt-row" />
		<EditRowStyle CssClass="warning" />
	</asp:GridView>
	<asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>'
		SelectCommand="SELECT * FROM [Product]" ConflictDetection="CompareAllValues"
		DeleteCommand="DELETE FROM [Product] WHERE [ProductId] = @original_ProductId"
		InsertCommand="INSERT INTO [Product] ([ProductName], [Description], [Price],[ProductImage],[CategoryId],[NutritionInfo]) VALUES (@ProductName, @Description, @Price,@ProductImage,@CategoryId,@NutritionInfo)"
		OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Product] SET [ProductName] = @ProductName, [Price] = @Price, [Description] = @Description WHERE [ProductId] = @original_ProductId AND [ProductName] = @original_ProductName AND [Description] = @original_Description AND [Price] = @original_Price">
		<DeleteParameters>
			<asp:Parameter Name="original_ProductId" Type="String"></asp:Parameter>
			<asp:Parameter Name="original_ProductName" Type="String"></asp:Parameter>
			<asp:Parameter Name="original_Price" Type="Decimal"></asp:Parameter>
			<asp:Parameter Name="original_Description" Type="String"></asp:Parameter>
		</DeleteParameters>
		<InsertParameters>
			<asp:Parameter Name="ProductName" Type="String"></asp:Parameter>
			<asp:Parameter Name="Price" Type="Decimal"></asp:Parameter>
			<asp:Parameter Name="Description" Type="String"></asp:Parameter>
			<asp:Parameter Name="ProductImage" Type="String"></asp:Parameter>
			<asp:Parameter Name="CategoryId" Type="Int32"></asp:Parameter>
			<asp:Parameter Name="NutritionInfo" Type="String"></asp:Parameter>
		</InsertParameters>
		<UpdateParameters>
			<asp:Parameter Name="ProductName" Type="String"></asp:Parameter>
			<asp:Parameter Name="Price" Type="Decimal"></asp:Parameter>
			<asp:Parameter Name="Description" Type="String"></asp:Parameter>
			<asp:Parameter Name="original_ProductName" Type="String"></asp:Parameter>
			<asp:Parameter Name="original_Price" Type="Decimal"></asp:Parameter>
			<asp:Parameter Name="original_Description" Type="String"></asp:Parameter>
		</UpdateParameters>
	</asp:SqlDataSource>

	<p>To add a new product,enter the product information and click Add Product.</p>
	<asp:Label ID="lblError" runat="server" EnableViewState="false" CssClass="text-danger"></asp:Label>

	<div class="form-group row">
		<label for="productName" class="col-sm-2">Product Name: </label>
		<div class="col-sm-3">
			<asp:TextBox ID="txtProductName" Placeholder="Product Name" runat="server" MaxLength="50"
				CssClass="form-control"></asp:TextBox>
		</div>
		<div class="col-sm-offset-2 col-sm-5">
			<asp:RequiredFieldValidator ID="rfvProductName" runat="server" ControlToValidate="txtProductName" CssClass="text-danger"
				ErrorMessage="Product Name is required ">  </asp:RequiredFieldValidator>
		</div>
	</div>

	<div class="form-group row">
		<label for="txtPrice" class="col-sm-2">Price: </label>
		<div class="col-sm-3">
			<asp:TextBox ID="txtPrice" runat="server"
				CssClass="form-control" Placeholder="Price"></asp:TextBox>
		</div>
		<div class="col-sm-offset-2 col-sm-5">
			<asp:RequiredFieldValidator ID="rfvPrice" runat="server" ControlToValidate="txtPrice" CssClass="text-danger"
				ErrorMessage="Price is required ."></asp:RequiredFieldValidator>
		</div>
	</div>

	<div class="form-group row">
		<label for="txtDescription" class="col-sm-2">Description: </label>
		<div class="col-sm-3">
			<asp:TextBox ID="txtDescription" runat="server"
				CssClass="form-control"></asp:TextBox>
		</div>
		<div class="col-sm-offset-2 col-sm-5">
			<asp:RequiredFieldValidator ID="rfv" runat="server"
				ControlToValidate="txtDescription" CssClass="text-danger"
				ErrorMessage="Description is required">
			</asp:RequiredFieldValidator>
		</div>
	</div>
	<div class="form-group row">
		<label for="txtImage" class="col-sm-2">Image: </label>
		<div class="col-sm-3">
			<asp:FileUpload ID="img" runat="server"
				CssClass="form-control"></asp:FileUpload>
		</div>
		<div class="col-sm-offset-2 col-sm-5">
			<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
				ControlToValidate="img" CssClass="text-danger"
				ErrorMessage="image is required">
			</asp:RequiredFieldValidator>
		</div>
	</div>
	<div class="form-group row">
		<label for="txtCategory" class="col-sm-2">Category: </label>
		<div class="col-sm-3">
			<asp:DropDownList Width="100px" runat="server" ID="ddlCategory" DataSourceID="SqlDataSource2" DataTextField="CategoryName" DataValueField="CategoryId"></asp:DropDownList>
		</div>

		<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>
		<div class="col-sm-offset-2 col-sm-5">
			<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
				ControlToValidate="ddlCategory" CssClass="text-danger"
				ErrorMessage="Choose Category is required">
			</asp:RequiredFieldValidator>
		</div>
	</div>

	<br />
	<asp:Button ID="btnAddProduct" runat="server" Text="Add Product"
		CssClass="btn btn-primary offset-sm-2 col-sm-2" OnClick="btnAddProduct_Click" />
	<br />
	<br />






</asp:Content>
