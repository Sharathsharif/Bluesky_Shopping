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
</head>

<body class="bg agileinfo">
    <h1 class="agile_head text-center">Bluesky Shopping</h1>
    <h2 class="agile_head text-center">User Login </h2>
    <form runat="server" class="agile_form">

        <div class="w3layouts_main wrap">
            <!--Horizontal Tab-->
            <div id="parentHorizontalTab_agile">
                <ul class="resp-tabs-list hor_1">
                    <li>LogIn</li>
                    <li>SignUp</li>
                </ul>


                <div class="resp-tabs-container hor_1">
                    <%--<div class="w3_agile_login">--%>
                    <div class="agile_its_registration">

                        
                        <table >
                            <tr>
                                <td>
                                    <p>Email</p>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox1" runat="server" Placeholder="Enter Your Email ID" required="required"></asp:TextBox>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <p>Password</p>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox2" runat="server" Placeholder="Enter Your Password" required="required"></asp:TextBox>
                                </td>

                            </tr>
                        </table>
                        <div class="check">
                            <div class="checkbox w3l">
                                <asp:CheckBox ID="CheckBox1" runat="server" />
                                <i></i>I accept the terms and conditions
                            </div>
                        </div>
                        <asp:Button ID="Button1" runat="server" Text="LogIn" class="agileinfo" />
                        <div class="login_w3ls">
                            <a href="#">Forgot Password</a>
                        </div>
                    </div>


                    <div class="agile_its_registration">
                        <table>
                            <tr>
                                <td>
                                    <p>First Name</p>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox3" runat="server" Placeholder="Enter Your First Name" required="required"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p>Last Name</p>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox4" runat="server" Placeholder="Enter Your Last Name" required="required"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p>Email Id</p>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox5" runat="server" Placeholder="Enter Your Email Id" required="required"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p>Contact</p>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox6" runat="server" Placeholder="Enter Your Contact Number" required="required"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p>Create Password</p>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox7" runat="server" Placeholder="Enter Your  Password" required="required"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p>ReEnter Password</p>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox8" runat="server" Placeholder="ReEnter Your  Password" required="required"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p>Address</p>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox9" TextMode="MultiLine" runat="server" Placeholder="Enter Your  Address" required="required"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p>State</p>
                                </td>
                                <td>
                                    <asp:DropDownList ID="DropDownList1" runat="server">
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
                                </td>
                            </tr>
                        </table>
                        
                        <div class="check w3_agileits">
                            <label class="checkbox w3">
                               <asp:CheckBox ID="CheckBox2" runat="server" /><i> </i>I accept the terms and conditions</label>
                        </div>
                        <asp:Button ID="Button2" runat="server" Text="SignUp" />
                        <asp:Button ID="Button3" runat="server" Text="Reset" />
                        <asp:Button ID="Button4" runat="server" Text="login" />

                        
                    </div>
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
        <!--//tabs-->
    </form>

</body>
</html>
