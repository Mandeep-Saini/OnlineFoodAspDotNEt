<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Menu.aspx.cs" Inherits="OnlineFoodDelivery.Menu" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" ID="Content1" runat="server">

	<link href="css/site.css" rel="stylesheet" />
	<main>
		<div class="col-sm-12">
			<h2 style="text-align: center;"><strong>Menu</strong></h2>
			<div class="container1">
				<span class="menu-dropdown">
					<asp:DropDownList ID="categoryddl" CssClass="form-control" AutoPostBack="true" runat="server" DataSourceID="SqlDataSourceCategory" DataTextField="CategoryName" DataValueField="CategoryId">
					</asp:DropDownList>
				</span>
			</div>
			<div class="container1">
				<span class="menu-dropdown">
					<asp:DropDownList ID="productddl" CssClass="form-control" AutoPostBack="true" runat="server" DataSourceID="SqlDataSourceProduct" DataTextField="ProductName" DataValueField="ProductId"></asp:DropDownList>
				</span>
			</div>

		</div>
	</main>

	<%--<asp:HiddenField ID="hdnProductId" runat="server" Value="<%# Eval("ProductId") %>" />--%>


	<asp:SqlDataSource ID="SqlDataSourceCategory" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>
	<asp:SqlDataSource ID="SqlDataSourceProduct" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Product] WHERE ([CategoryId] = @CategoryId)">
		<SelectParameters>
			<asp:ControlParameter ControlID="categoryddl" PropertyName="SelectedValue" Name="CategoryId" Type="Int32"></asp:ControlParameter>
		</SelectParameters>
	</asp:SqlDataSource>

	<asp:SqlDataSource ID="SqlDataSourceDetail" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Product] WHERE ([ProductId] = @ProductId)">
		<SelectParameters>
			<asp:ControlParameter ControlID="productddl" PropertyName="SelectedValue" Name="ProductId" Type="Int32"></asp:ControlParameter>
		</SelectParameters>
	</asp:SqlDataSource>
	<asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSourceDetail">
		<ItemTemplate>
			<div class="container">
				<div class="card">
					<div class="container-fliud">
						<div class="wrapper row">
							<div class="preview col-md-6">

								<div class="preview-pic tab-content">

									<img class="tab-pane active" src='<%# "/images/" + Eval("ProductImage") %>' id='myImages' width='160' height='120' runat='server' alt='' />
								</div>
								<ul class="preview-thumbnail nav nav-tabs">
									<li class="active"><a data-target="#pic-1" data-toggle="tab">
										<img src='<%# "/images/" + Eval("ProductImage") %>' /></a></li>
									<li><a data-target="#pic-2" data-toggle="tab">
										<img src='<%# "/images/" + Eval("ProductImage") %>' /></a></li>
									<li><a data-target="#pic-3" data-toggle="tab">
										<img src='<%# "/images/" + Eval("ProductImage") %>' /></a></li>
									<li><a data-target="#pic-4" data-toggle="tab">
										<img src='<%# "/images/" + Eval("ProductImage") %>' /></a></li>
									<li><a data-target="#pic-5" data-toggle="tab">
										<img src='<%# "/images/" + Eval("ProductImage") %>' /></a></li>
								</ul>

							</div>
							<div class="details col-md-6">
								<h3 class="product-title">
									<asp:Label runat="server" ID="label3" Text='<%# Bind("ProductName") %>'></asp:Label></span></h4>
								</h3>
								<div class="rating">
									<div class="stars">
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star"></span>
										<span class="fa fa-star"></span>
									</div>
									<span class="review-no">41 reviews</span>
								</div>
								<p class="product-description">
									<h6 class="price">description: <span>
										<asp:Label runat="server" ID="label1" Text='<%# Bind("Description") %>'></asp:Label></span></h6>
								</p>
								<h6 class="price">current price: <span>$
								<asp:Label runat="server" ID="label2" Text='<%# Bind("Price") %>'></asp:Label></p>

								</span></h6>

							</div>
						</div>
					</div>
				</div>
			</div>


		</ItemTemplate>


	</asp:Repeater>
	<div class="form-group row">
		<h1 class="col-sm-6 text-right">Quantity</h1>
		<div class="col-sm-6">
			<asp:TextBox ID="txtQuantity" ValidationGroup="order" CssClass="form-group" style="margin-top:10px;" runat="server"></asp:TextBox>
		</div>
		<div class="col-sm-offset-2 col-sm-5">
			<asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="order" ControlToValidate="txtQuantity" runat="server" CssClass="text-danger" ErrorMessage="Add Quantity"></asp:RequiredFieldValidator>

		</div>
	</div>
	
	<div class="form-group row action">
		<div class="col-sm-6 text-lg-right"><asp:Button ID="btnCart" runat="server" Text="Go to Cart"
			PostBackUrl="~/Cart.aspx" CausesValidation="False" CssClass="add-to-cart btn btn-default" /></div>
		<div class="col-sm-6 ">
			<asp:Button ID="btnAdd" ValidationGroup="order" runat="server" Text="Add to Cart"
			OnClick="btnAdd_Click" CssClass="add-to-cart btn btn-default" />
		</div>
		
	</div>

	







</asp:Content>
