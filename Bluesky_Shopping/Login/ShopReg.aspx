<%@ Page Title="" Language="C#" MasterPageFile="~/Login/Login.Master" AutoEventWireup="true" CodeBehind="ShopReg.aspx.cs" Inherits="Bluesky_Shopping.Login.ShopReg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


     <div class="content-w3ls">
    <div class="text-center icon">
        <span class="fa fa-user-plus"></span>
    </div>
       <h3 class="text-center " style="color:whitesmoke" > shop details</h3> 
    <div class="content-bottom">
         <!-- shop Name -->

         <div class="field-group">
            <span class="fa fa-envelope" aria-hidden="true"></span>
            <div class="wthree-field">
                <asp:TextBox ID="TextBox1" runat="server" placeholder="Shop Name"  required=""></asp:TextBox>
            </div>
        </div>
        <!-- shop Email -->
        <div class="field-group">
            <span class="fa fa-envelope" aria-hidden="true"></span>
            <div class="wthree-field">
                <asp:TextBox ID="TextBox2" runat="server" placeholder="Shop Email" TextMode="Email" required=""></asp:TextBox>
            </div>
        </div>

        <!-- Contact -->
        <div class="field-group">
            <span class="fa fa-phone" aria-hidden="true"></span>
            <div class="wthree-field">
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Number" placeholder="Contact Number" required=""></asp:TextBox>
            </div>
        </div>

        <!-- Address -->
         <div class="field-group">
            <span class="fa fa-home" aria-hidden="true"></span>
            <div class="wthree-field">
                <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" placeholder="Enter Your Shop Address" required="" CssClass="transparent-textbox"></asp:TextBox>
            </div>
        </div>
          <!-- Shop Category -->
         <div class="field-group">
            <span class="fa fa-home" aria-hidden="true"></span>
            <div class="wthree-field">
              <asp:DropDownList ID="DropDownCategory" runat="server" CssClass="transparent-dropdown">
            <asp:ListItem Text="Select Category" />
            <asp:ListItem Text="Textiles"  />
            <asp:ListItem Text="Electronics"  />
            <asp:ListItem Text="Furnitures"  />
            <asp:ListItem Text="Category 4"  />
            
        </asp:DropDownList>
            </div>
        </div>
       <h3 class="text-center " style="color:whitesmoke" > Personal details</h3> 

        <!-- Owner Name -->
        <div class="field-group">
            <span class="fa fa-user" aria-hidden="true"></span>
            <div class="wthree-field">
                <asp:TextBox ID="TextBox5" runat="server" placeholder="First Name" required=""></asp:TextBox>
            </div>
        </div>
        
        <!-- Email -->
        <div class="field-group">
            <span class="fa fa-envelope" aria-hidden="true"></span>
            <div class="wthree-field">
                <asp:TextBox ID="TextBox6" runat="server" placeholder="Personal Email" TextMode="Email" required=""></asp:TextBox>
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
                <asp:TextBox ID="TextBox7" runat="server" placeholder="Date of Birth" required="" TextMode="Date" CssClass="datepicker"></asp:TextBox>
            </div>
        </div>


       <h3 class="text-center " style="color:whitesmoke" > Login details</h3> 
       

        <!-- Password -->
        <div class="field-group">
            <span class="fa fa-lock" aria-hidden="true"></span>
            <div class="wthree-field">
                <asp:TextBox ID="TextBox8" runat="server" placeholder="Create Password" TextMode="Password" required=""></asp:TextBox>
            </div>
        </div>

        <!-- Confirm Password -->
        <div class="field-group">
            <span class="fa fa-lock" aria-hidden="true"></span>
            <div class="wthree-field">
                <asp:TextBox ID="TextBox9" runat="server" placeholder="Confirm Password" TextMode="Password" required=""></asp:TextBox>
            </div>
        </div>

        <!-- Register Button -->
        <div class="wthree-field">
            <asp:Button ID="ButtonRegister" runat="server" CssClass="btn fa-align-center" Style="background-color:deepskyblue; padding:10px; border-radius:20px" Text="Register" OnClick="ButtonRegister_Click" />
        </div>
       <h3 class="text-center " style="color:antiquewhite" > Note: You will get access only after the admin Approval</h3> 

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
