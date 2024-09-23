<%@ Page Title="" Language="C#" MasterPageFile="~/Login/Login.Master" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="Bluesky_Shopping.Login.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="content-w3ls">
			<div class="text-center icon">
				<span class="fa fa-user"></span>
			</div>
			<div class="content-bottom">
				
					<div class="field-group">
						<span class="fa fa-user" aria-hidden="true"></span>
						<div class="wthree-field">
							<asp:TextBox ID="TextBox1" runat="server" placeholder="Username" required="" Style="border-radius:20px; " ></asp:TextBox>
							
						</div>
					</div>
					<div class="field-group">
						<span class="fa fa-lock" aria-hidden="true"></span>
						<div class="wthree-field">
							<asp:TextBox ID="TextBox2" runat="server" placeholder="Password" TextMode="Password" required="" Style="border-radius:20px; " ></asp:TextBox>

						</div>
					</div>
					<div class="wthree-field">
						<asp:Button ID="Button1" runat="server" CssClass="btn fa-align-center" Style="background-color:deepskyblue; padding:10px; border-radius:20px" Text="Start SHopping" OnClick="Button1_Click" />

						
						
					</div>
					<br />
					<ul class="list-login-bottom">
						<li class="">
							<a href="userreg.aspx" class="">Create Account</a>
						</li>
						
						<li class="clearfix"></li>
					</ul>
				
			</div>
		</div>
</asp:Content>
