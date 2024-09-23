<%@ Page Title="" Language="C#" MasterPageFile="~/Login/Login.Master" AutoEventWireup="true" CodeBehind="userreg.aspx.cs" Inherits="Bluesky_Shopping.Login.userreg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content-w3ls">
    <div class="text-center icon">
        <span class="fa fa-user-plus"></span>
    </div>
    <div class="content-bottom">
        <!-- First Name -->
        <div class="field-group">
            <span class="fa fa-user" aria-hidden="true"></span>
            <div class="wthree-field">
                <asp:TextBox ID="TextBox1" runat="server" placeholder="First Name" required=""></asp:TextBox>
            </div>
        </div>
        
        <!-- Last Name -->
        <div class="field-group">
            <span class="fa fa-user" aria-hidden="true"></span>
            <div class="wthree-field">
                <asp:TextBox ID="TextBox2" runat="server" placeholder="Last Name" required=""></asp:TextBox>
            </div>
        </div>

        <!-- Gender -->
        <div class="field-group">
            <span class="fa fa-venus-mars" aria-hidden="true"></span>
            <div class="wthree-field" style="color: white;">
                <asp:RadioButtonList ID="RadioButtonListGender" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Text="Male"></asp:ListItem>
                    <asp:ListItem Text="Female"></asp:ListItem>
                </asp:RadioButtonList>
            </div>
        </div>

        <!-- Date of Birth -->
        <div class="field-group">
            <span class="fa fa-calendar" aria-hidden="true"></span>
            <div class="wthree-field">
                <asp:TextBox ID="TextBox3" runat="server" placeholder="Date of Birth" required="" TextMode="Date" CssClass="datepicker"></asp:TextBox>
            </div>
        </div>

        <!-- Email -->
        <div class="field-group">
            <span class="fa fa-envelope" aria-hidden="true"></span>
            <div class="wthree-field">
                <asp:TextBox ID="TextBox4" runat="server" placeholder="Email" TextMode="Email" required=""></asp:TextBox>
            </div>
        </div>

        <!-- Contact -->
        <div class="field-group">
            <span class="fa fa-phone" aria-hidden="true"></span>
            <div class="wthree-field">
                <asp:TextBox ID="TextBox5" runat="server" TextMode="Number" placeholder="Contact Number" required=""></asp:TextBox>
            </div>
        </div>

        <!-- Address -->
         <div class="field-group">
            <span class="fa fa-home" aria-hidden="true"></span>
            <div class="wthree-field">
                <asp:TextBox ID="TextBox6" runat="server" TextMode="MultiLine" placeholder="Enter Your Address" required="" CssClass="transparent-textbox"></asp:TextBox>
            </div>
        </div>

        <!-- Password -->
        <div class="field-group">
            <span class="fa fa-lock" aria-hidden="true"></span>
            <div class="wthree-field">
                <asp:TextBox ID="TextBox7" runat="server" placeholder="Create Password" TextMode="Password" required=""></asp:TextBox>
            </div>
        </div>

        <!-- Confirm Password -->
        <div class="field-group">
            <span class="fa fa-lock" aria-hidden="true"></span>
            <div class="wthree-field">
                <asp:TextBox ID="TextBox8" runat="server" placeholder="Confirm Password" TextMode="Password" required=""></asp:TextBox>
            </div>
        </div>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password do not match" ControlToCompare="TextBox7" ControlToValidate="TextBox8"></asp:CompareValidator>

        <!-- Register Button -->
        <div class="wthree-field">
            <asp:Button ID="ButtonRegister" runat="server" CssClass="btn fa-align-center" Style="background-color:deepskyblue; padding:10px; border-radius:20px" Text="Register" OnClick="ButtonRegister_Click" />
        </div>

        <!-- Already have an account -->
        <br />
        <ul class="list-login-bottom">
            <li class="">
                <a href="UserLogin.aspx" class="">Already have an account? Login</a>
            </li>
            <li class="clearfix"></li>
        </ul>
    </div>
</div>

</asp:Content>
