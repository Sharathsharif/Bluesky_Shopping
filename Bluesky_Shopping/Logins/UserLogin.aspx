<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="Bluesky_Shopping.Logins.User.UserLogin" %>

<!DOCTYPE html>
<html>
<head>
    <title>BlueSky Shopping - User Login </title>
    <!-- custom-theme -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- //custom-theme -->
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!-- js -->
    <script src="js/jquery-1.9.1.min.js"></script>
    <!--// js -->
    <link rel="stylesheet" type="text/css" href="css/easy-responsive-tabs.css " />
    <link href="//fonts.googleapis.com/css?family=Questrial" rel="stylesheet">
  <link href="../../Content/bootstrap.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 205px;
        }
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>

<body class="bg agileinfo">
    <asp:Image ID="Image1" runat="server" ImageUrl="~/Logins/images/BlueSky logo 4.png.svg" />
    <h1 class="agile_head text-center">Bluesky Shopping <i class="fa fa-shopping-bag" aria-hidden="true"></i></h1>
    <form runat="server" class="agile_form">
    <h2 class="agile_head text-center">  <asp:LinkButton ID="LinkButton1" runat="server" CssClass=" hoveref1" Style="color:red" OnClick="LinkButton1_Click" >User Login</asp:LinkButton> | <asp:LinkButton ID="LinkButton2" runat="server" CssClass="hoveref1">Shop Login</asp:LinkButton> </h2>

        <div class="w3layouts_main wrap">
            <!--Horizontal Tab-->
            <div id="parentHorizontalTab_agile">
                <ul class="resp-tabs-list hor_1">
                    <li id="login-tab">LogIn</li>
                    <li id="signup-tab">SignUp</li>
                </ul>


                <div class="resp-tabs-container hor_1">
                    <%--<div class="w3_agile_login">--%>
                    <div class="agile_its_registration">


                        <table class="">
                            <tr>
                                <td>
                                    <p>Email</p>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox1" runat="server" TextMode="Email" Placeholder="Enter Your Email ID" required="required"></asp:TextBox>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <p>Password</p>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox2" TextMode="Password" runat="server" Placeholder="Enter Your Password" required="required"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                        <div class="check">
                                <asp:CheckBox ID="CheckBox1" runat="server" />  I accept the terms and conditions
                        </div>

                        <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click1">LinkButton</asp:LinkButton>
              
                        <asp:Button ID="Button1" runat="server" Text="LogIn" OnClick="LinkButton3_Click" />
                        <div class="login_w3ls">
                            <a "javascript:void(0);" onclick="switchToSignUp()" class="">create New Account</a>
                        </div>
                    </div>

                    <%--registration table startsss--%>

                    <div class="agile_its_registration" id="reg">
                        <table>
                            <tr>
                                <td>
                                    <p>First Name</p>
                                </td>
                                <td class="auto-style1">
                                    <asp:TextBox ID="TextBox3" runat="server" Placeholder="Enter Your First Name"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                        ControlToValidate="TextBox3" ErrorMessage="First Name is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p>Last Name</p>
                                </td>
                                <td class="auto-style1">
                                    <asp:TextBox ID="TextBox4" runat="server" Placeholder="Enter Your Last Name"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                        ControlToValidate="TextBox4" ErrorMessage="Last Name is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p>Gernder</p>
                                </td>
                                <td class="auto-style1">
                                    <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                                        <asp:ListItem>Male</asp:ListItem>
                                        <asp:ListItem>Female</asp:ListItem>
                                    </asp:CheckBoxList>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p>Email Id</p>
                                </td>
                                <td class="auto-style1">
                                    <asp:TextBox ID="TextBox5" TextMode="Email" runat="server" Placeholder="Enter Your Email Id"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                                        ControlToValidate="TextBox5" ErrorMessage="Email is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p>Contact</p>
                                </td>
                                <td class="auto-style1">
                                    <asp:TextBox ID="TextBox6" runat="server" Placeholder="Enter Your Contact Number"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                                        ControlToValidate="TextBox6" ErrorMessage="Contact number is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p>Create Password</p>
                                </td>
                                <td class="auto-style1">
                                    <asp:TextBox ID="TextBox7" runat="server" TextMode="Password" Placeholder="Enter Your Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                                        ControlToValidate="TextBox7" ErrorMessage="Password is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p>ReEnter Password</p>
                                </td>
                                <td class="auto-style1">
                                    <asp:TextBox ID="TextBox8" runat="server" TextMode="Password" Placeholder="ReEnter Your Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                                        ControlToValidate="TextBox8" ErrorMessage="Please confirm your password" ForeColor="Red">*</asp:RequiredFieldValidator>
                                    <asp:CompareValidator ID="CompareValidator1" runat="server"
                                        ErrorMessage="Passwords do not match" ControlToCompare="TextBox7"
                                        ControlToValidate="TextBox8" ForeColor="Red">*</asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p>Address</p>
                                </td>
                                <td class="auto-style1">
                                    <asp:TextBox ID="TextBox9" TextMode="MultiLine" runat="server" Placeholder="Enter Your Address"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server"
                                        ControlToValidate="TextBox9" ErrorMessage="Address is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p>State</p>
                                </td>
                                <td class="">
                                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="custom-dropdown">
                                        <asp:ListItem Value="Not Selected">Not Selected</asp:ListItem>
                                        <asp:ListItem>Andhra Pradesh</asp:ListItem>
                                        <asp:ListItem>Arunachal Pradesh</asp:ListItem>
                                        <asp:ListItem>Assam</asp:ListItem>
                                        <asp:ListItem>Bihar</asp:ListItem>
                                        <asp:ListItem>Chhattisgarh</asp:ListItem>
                                        <asp:ListItem>Goa</asp:ListItem>
                                        <asp:ListItem>Gujarat</asp:ListItem>
                                        <asp:ListItem>Haryana</asp:ListItem>
                                        <asp:ListItem>Himachal Pradesh</asp:ListItem>
                                        <asp:ListItem>Jharkhand</asp:ListItem>
                                        <asp:ListItem>Karnataka</asp:ListItem>
                                        <asp:ListItem>Kerala</asp:ListItem>
                                        <asp:ListItem>Madhya Pradesh</asp:ListItem>
                                        <asp:ListItem>Maharashtra</asp:ListItem>
                                        <asp:ListItem>Manipur</asp:ListItem>
                                        <asp:ListItem>Meghalaya</asp:ListItem>
                                        <asp:ListItem>Mizoram</asp:ListItem>
                                        <asp:ListItem>Nagaland</asp:ListItem>
                                        <asp:ListItem>Odisha</asp:ListItem>
                                        <asp:ListItem>Punjab</asp:ListItem>
                                        <asp:ListItem>Rajasthan</asp:ListItem>
                                        <asp:ListItem>Sikkim</asp:ListItem>
                                        <asp:ListItem>Tamil Nadu</asp:ListItem>
                                        <asp:ListItem>Telangana</asp:ListItem>
                                        <asp:ListItem>Tripura</asp:ListItem>
                                        <asp:ListItem>Uttar Pradesh</asp:ListItem>
                                        <asp:ListItem>Uttarakhand</asp:ListItem>
                                        <asp:ListItem>West Bengal</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server"
                                        ControlToValidate="DropDownList1" InitialValue="Not Selected" ErrorMessage="Please select a state" ForeColor="Red">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                        </table>

                        <div class="check w3_agileits">
                            
                            <label class="checkbox w3">
                                <asp:CheckBox ID="CheckBox2" runat="server" /><i> </i>I accept the terms and conditions</label>
                           <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server"
                                ControlToValidate="CheckBox2" InitialValue="false" ErrorMessage="You must accept the terms" ForeColor="Red">*</asp:RequiredFieldValidator>--%>
                        </div>

                        <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">SignUp</asp:LinkButton>
                        <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">Reset</asp:LinkButton>

                        <div class="login_w3ls">
        <a href="javascript:void(0);" onclick="switchTologin()" class="">Already have an account?</a>
    </div>
</div>

                    <%--registration table endss--%>

                </div>
            </div>
            <!-- //Horizontal Tab -->
        </div>



        <div class="agileits_w3layouts_copyright text-center">
            <p>© 2024 User Login -Blue SKy Shopping. All rights reserved | Design by <a href="#">Sharath</a></p>
        </div>
        <!--tabs-->



        <script src="js/easyResponsiveTabs.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                //Horizontal Tab
                $('#parentHorizontalTab_agile').easyResponsiveTabs({
                    type: 'default', //Types: default, vertical, accordion
                    width: 'auto', //auto or any width like 600px
                    fit: true, // 100% fit in a container
                    tabidentify: 'hor_1', // The tab groups identifier
                    activate: function (event) { // Callback function if tab is switched
                        var $tab = $(this);
                        var $info = $('#nested-tabInfo');
                        var $name = $('span', $info);
                        $name.text($tab.text());
                        $info.show();
                    }
                });
            });
        </script>
        <script type="text/javascript">
            window.onload = function () {
                document.getElementById("password1").onchange = validatePassword;
                document.getElementById("password2").onchange = validatePassword;
            }
            function validatePassword() {
                var pass2 = document.getElementById("password2").value;
                var pass1 = document.getElementById("password1").value;
                if (pass1 != pass2)
                    document.getElementById("password2").setCustomValidity("Passwords Don't Match");
                else
                    document.getElementById("password2").setCustomValidity('');
                //empty string means no validation error
            }

        </script>
        <script>
            function switchToSignUp() {
                document.getElementById("signup-tab").click();
            }
            function switchTologin() {
                document.getElementById("login-tab").click();
            }
            
        </script>
        <!--//tabs-->
    </form>

</body>
</html>
