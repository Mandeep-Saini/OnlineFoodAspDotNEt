<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" MasterPageFile="~/Site.Master" Inherits="OnlineFoodDelivery.Cart" %>


<asp:Content ID="content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<h1 style="text-align:center; margin-bottom:50px;">My Cart</h1>
	   <div class="row" style="margin:auto;"><%-- row 1 --%>
        <div class="col-sm-6">
			<%-- cart display column --%>
            <div class="form-group">
                <div class="col-sm-12"><asp:ListBox ID="lstCart" ValidationGroup="check" runat="server"  CssClass="form-control"></asp:ListBox>
					<asp:RequiredFieldValidator ValidationGroup="check" ID="RequiredFieldValidator2" CssClass="text-danger" ControlToValidate="lstCart" runat="server" ErrorMessage="Select the item first"></asp:RequiredFieldValidator></div>
            </div>
        </div>
        <div class="col-sm-6"><%-- cart edit buttons column --%>
            <div class="form-group">
                <div class="col-sm-12"><asp:Button ID="btnRemove" runat="server" 
                    Text="Remove Item" onclick="btnRemove_Click" class="btn btn-primary" style="width:90px;" /></div><br />
                <div class="col-sm-12"><asp:Button ID="btnEmpty" runat="server" 
                    Text="Empty Cart" onclick="btnEmpty_Click" class="btn btn-primary" style="width:90px;" /></div>
            </div>
        </div>
    </div><%-- end of row 1 --%>
    <div class="col-md-8"><%-- row 2 --%>
		
        <div class="container">
			
            
			<div class="form-group">
				<label>Delivery Address:</label>
				<asp:TextBox ID="delAdd" ValidationGroup="delivery" runat="server"></asp:TextBox>
			</div>
			<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="delAdd" ValidationGroup="check" ErrorMessage="Enter Delivery Address" CssClass="text-danger"></asp:RequiredFieldValidator>
            <div class="form-group"><%-- buttons --%>
                <div class="col-sm-12">
                    <asp:Button ID="btnContinue" runat="server"
                        PostBackUrl="~/Menu.aspx" Text="Continue Shopping" style="width:120px;" class="btn btn-primary" />
                    <asp:Button ID="btnCheckOut" ValidationGroup="check" runat="server" Text="Check Out"  
                        onclick="btnCheckOut_Click" class="btn btn-primary" style="width:90px;" />
                </div>
            </div>
			<div class="form-group"><%-- message label --%>
                <h1><asp:Label ID="lblMessage" runat="server" EnableViewState="False"
                    CssClass="text-info col-sm-12"></asp:Label></h1>
            </div>
        </div>
		
    </div><%-- end of row 2 --%>
  
      
</asp:Content>