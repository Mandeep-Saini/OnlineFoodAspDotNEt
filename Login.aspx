<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Login.aspx.cs" Inherits="OnlineFoodDelivery.Login" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<style>
       
           label{
               font-size: 1.2em;
               color:black;
               margin-top: 10px;
               font-weight: 500;
           }
       </style>
	<div class="row">
		<div class="col-md-4" style="margin-left: 150px; width: 50%;">
			<h3 style="text-align: center;"><b>Sign In</b></h3>

			<fieldset class="form-group">
				<label>Enter Email*</label>
				<asp:TextBox ID="txtEmail" runat="server" ValidationGroup="signin" CssClass="form-control"></asp:TextBox>
				<asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="signin" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email Required"></asp:RequiredFieldValidator>
			</fieldset>
			<fieldset class="form-group">
				<label>Enter Password*</label>
				<asp:TextBox ID="txtPassword" runat="server" ValidationGroup="signin" TextMode="Password" CssClass="form-control"></asp:TextBox>
				<asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="signin" runat="server"  ControlToValidate="txtPassword" ErrorMessage="Password Required"></asp:RequiredFieldValidator>

			</fieldset>
			<fieldset class="form-group">
				<asp:Button runat="server" ValidationGroup="signin" ID="Button1" OnClick="Button1_Click" Text="Sign In" class="btn btn-lg btn-secondary btn-block" />
				<asp:Label runat="server" ID="label2"></asp:Label>
			</fieldset>

			<div class="login text-center">
				<p>or Login with your social profile:</p>
				<a href="https://www.facebook.com/" class="btn-facebook login-icons btn-lg"><i class="mdi mdi-facebook"></i>Facebook</a>
				<a href="https://gmail.com/" class="btn-google login-icons btn-lg"><i class="mdi mdi-google"></i>Google</></a>
			</div>
		</div>
		<div class="col-md-4" style="width: 50%; margin-left: 100px;">
			<h3 style="text-align: center;"><b>Register Now!</b></h3>
			<fieldset class="form-group">
				<label>Enter Email*</label>
				<asp:TextBox ID="email" runat="server" ValidationGroup="register" CssClass="form-control"></asp:TextBox>
				<asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="register" runat="server" ControlToValidate="email" ErrorMessage="Email Required"></asp:RequiredFieldValidator>
				<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" ErrorMessage="Email format is not valid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
				<asp:Label ID="Label1" runat="server" CssClass="alert-danger"></asp:Label>
			</fieldset>
			<fieldset class="form-group">
				<label>Enter Password*</label>
				<asp:TextBox ID="password" runat="server" TextMode="Password" ValidationGroup="register" CssClass="form-control"></asp:TextBox>
				<asp:RequiredFieldValidator ID="RequiredFieldValidator4" ValidationGroup="register" runat="server" ControlToValidate="password" ErrorMessage="Password Required"></asp:RequiredFieldValidator>

			</fieldset>
			<fieldset class="form-group">
				<label>Enter Confirm Password* </label>
				<asp:TextBox ID="confirmPassword" ValidationGroup="register" TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox>
				<asp:RequiredFieldValidator ID="RequiredFieldValidator5" ValidationGroup="register" runat="server" ControlToValidate="confirmPassword" ErrorMessage="Password Required"></asp:RequiredFieldValidator>
				<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="confirmPassword" ControlToCompare="password" ErrorMessage="Do not match the Password"></asp:CompareValidator>
			</fieldset>
			<fieldset class="form-group">
				<asp:Button runat="server" ID="btnSave" ValidationGroup="register" OnClick="btnSave_Click" Text="Sign In" class="btn btn-lg btn-secondary btn-block" />

			</fieldset>
			
		</div>

	</div>

	<!-- form ends-->




</asp:Content>
