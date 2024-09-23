<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShopLogin.aspx.cs" Inherits="Bluesky_Shopping.Logins.ShopLogin" %>


<!DOCTYPE html>
<html>
<head>
    <title>BlueSky Shopping - User Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <!-- Custom CSS -->
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link href="../../Content/bootstrap.css" rel="stylesheet" />

    <!-- Fonts -->
    <link href="//fonts.googleapis.com/css?family=Questrial" rel="stylesheet">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" crossorigin="anonymous" />

    <!-- jQuery -->
    <script src="js/jquery-1.9.1.min.js"></script>

    <!-- Responsive Tabs -->
    <link rel="stylesheet" type="text/css" href="css/easy-responsive-tabs.css" />
    <script src="js/easyResponsiveTabs.js"></script>

    <script type="text/javascript">
        function switchToSignUp() {
            document.getElementById("signup-tab").click();
        }
        function switchTologin() {
            document.getElementById("login-tab").click();
        }
    </script>

    <style>
        .auto-style1 {
            width: 205px;
        }
    </style>
</head>

<body class="bg agileinfo">
    <div>
    <form id="shopLoginForm" runat="server" class="agile_form">

    
    <asp:Image ID="Image1" runat="server" ImageUrl="~/Logins/images/BlueSky_logo.svg" />

    <h1 class="agile_head text-center">Bluesky Shopping <i class="fa fa-shopping-bag"></i></h1>
    
    <!-- Main Form -->
        <h2 class="agile_head text-center">
            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="hoveref1" OnClick="LinkButton1_Click">User Login</asp:LinkButton> 
            | 
            <asp:LinkButton ID="LinkButton2" runat="server" CssClass="hoveref1" OnClick="LinkButton2_Click" Style="color:red">Shop Login</asp:LinkButton>
        </h2>

        <div class="w3layouts_main wrap">
            <div id="parentHorizontalTab_agile">
                <!-- Tab Headers -->
                <ul class="resp-tabs-list hor_1">
                    <li id="login-tab">LogIn</li>
                    <li id="signup-tab">SignUp</li>
                </ul>

                <!-- Tab Content -->
                <div class="resp-tabs-container hor_1">
                    <!-- Login Tab -->
                    <div class="agile_its_registration">
                        <table>
                            <tr>
                                <td><p>Email</p></td>
                                <td>
                                    <asp:TextBox ID="TextBox1" runat="server" TextMode="Email" Placeholder="Enter Your Email ID" required="required"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td><p>Password</p></td>
                                <td>
                                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Placeholder="Enter Your Password" required="required"></asp:TextBox>
                                </td>
                            </tr>
                        </table>

                        <div class="check">
                            <asp:CheckBox ID="CheckBox1" runat="server" Text="I accept the terms and conditions" />
                        </div>

                        <asp:Button ID="Button1" runat="server" Text="Log In" OnClick="Button1_Click" CssClass="btn btn-primary" />
                        <div class="login_w3ls">
                            <a href="javascript:void(0);" onclick="switchToSignUp()">Create New Account</a>
                        </div>
                    </div>

                    <!-- SignUp Tab -->
                    <div class="agile_its_registration" id="reg">
                        <table>
                            <tr>
                                <td><p>First Name</p></td>
                                <td>
                                    <asp:TextBox ID="TextBox3" runat="server" Placeholder="Enter Your First Name"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="First Name is required" ForeColor="Red" />
                                </td>
                            </tr>
                            <tr>
                                <td><p>Email Id</p></td>
                                <td>
                                    <asp:TextBox ID="TextBox5" runat="server" TextMode="Email" Placeholder="Enter Your Email Id"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox5" ErrorMessage="Email is required" ForeColor="Red" />
                                </td>
                            </tr>
                            <tr>
                                <td><p>Password</p></td>
                                <td>
                                    <asp:TextBox ID="TextBox7" runat="server" TextMode="Password" Placeholder="Enter Your Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox7" ErrorMessage="Password is required" ForeColor="Red" />
                                </td>
                            </tr>
                        </table>

                        <asp:LinkButton ID="LinkButton4" runat="server" Text="SignUp" OnClick="LinkButton4_Click" CssClass="btn btn-success" />
                    </div>
                </div>
            </div>
        </div>

        <!-- Footer -->
        <div class="agileits_w3layouts_copyright text-center">
            <p>© 2024 User Login - BlueSky Shopping. All rights reserved | Design by <a href="#">Sharath</a></p>
        </div>
    </form>
        </div>
</body>
</html>
