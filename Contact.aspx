<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="OnlineFoodDelivery.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<style>
       
           label{
               font-size: 1.2em;
               color:black;
               margin-top: 10px;
               font-weight: 500;
           }
       </style>
	<main>
		<div class="container">
			<h3 style="text-align: center;"><b>Contact Info</b></h3>
			
			<div class="col-md-12" style="width: 90%; margin-left: 50px;">
				<h3 style="text-align: center;">Contact Us</h3>
				<fieldset class="form-group">
					<label>Email*</label>
					<asp:TextBox ID="txtEmail"  runat="server" CssClass="form-control"  ValidationGroup="contact" placeholder="Enter your email"></asp:TextBox>
					<asp:RequiredFieldValidator ID="RequiredFieldValidator1"  ValidationGroup="contact" ControlToValidate="txtEmail" runat="server" CssClass="text-danger" ErrorMessage="Email Required"></asp:RequiredFieldValidator>
				</fieldset>
				<fieldset class="form-group">
					<label>Phone*</label>
					<asp:TextBox ID="txtPhone" runat="server"  ValidationGroup="contact" CssClass="form-control" placeholder="Enter your phone"></asp:TextBox>
					<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"  ValidationGroup="contact" ControlToValidate="txtPhone" CssClass="text-danger" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
				</fieldset>
				<fieldset class="form-group">
					<label>Message* </label>
					<asp:TextBox ID="txtMessage" Rows="4" cols="100"  ValidationGroup="contact" runat="server" CssClass="form-control" placeholder="Enter your Message"></asp:TextBox>
					<asp:RequiredFieldValidator ID="RequiredFieldValidator3"  ValidationGroup="contact" runat="server" ControlToValidate="txtMessage" CssClass="text-danger" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
				</fieldset>
				<fieldset class="form-group">
					<asp:Button ID="save" class="btn btn-lg btn-secondary btn-block" OnClick="save_Click" ValidationGroup="contact" Text="Send" runat="server" />
				</fieldset>
			</div>


		</div>
	</main>

</asp:Content>
