<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Bluesky_Shopping.Logins.WebForm1" %>



<!DOCTYPE html>
<html>
<head>
    <title>BlueSky Shopping - User Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" crossorigin="anonymous" />

    <!-- Custom CSS -->
    <style>
        .form-container {
            max-width: 500px;
            margin: 50px auto;
            padding: 20px;
            background-color: #f9f9f9;
            box-shadow: 0 0 15px rgba(0,0,0,0.1);
            border-radius: 10px;
        }
        .toggle-btns {
            display: flex;
            justify-content: center;
            margin-bottom: 20px;
        }
        .toggle-btns button {
            margin: 0 10px;
        }
        .form-container h2 {
            margin-bottom: 20px;
        }
    </style>

    <!-- JavaScript -->
    <script>
        function showLogin() {
            document.getElementById('login-form').style.display = 'block';
            document.getElementById('signup-form').style.display = 'none';
        }

        function showSignup() {
            document.getElementById('login-form').style.display = 'none';
            document.getElementById('signup-form').style.display = 'block';
        }
    </script>
</head>

<body class="bg-light">
    <form id="shopLoginForm" runat="server">
        <div class="form-container">
            <!-- Toggle Buttons for Login and Signup -->
            <div class="toggle-btns">
                <button type="button" class="btn btn-primary" onclick="showLogin()">Login</button>
                <button type="button" class="btn btn-secondary" onclick="showSignup()">Sign Up</button>
            </div>

            <!-- Login Form -->
            <div id="login-form">
                <h2 class="text-center">User Login</h2>
                <div class="mb-3">
                    <label for="loginEmail" class="form-label">Email address</label>
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="Email" Placeholder="Enter Your Email ID" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label for="loginPassword" class="form-label">Password</label>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Placeholder="Enter Your Password" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-check mb-3">
                    <asp:CheckBox ID="CheckBox1" runat="server" CssClass="form-check-input" />
                    <label class="form-check-label" for="CheckBox1">Remember me</label>
                </div>
                <div class="d-grid">
                    <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn btn-primary" />
                </div>
            </div>

            <!-- Sign Up Form -->
            <div id="signup-form" style="display: none;">
                <h2 class="text-center">Sign Up</h2>
                <div class="mb-3">
                    <label for="signupFirstName" class="form-label">First Name</label>
                    <asp:TextBox ID="TextBox3" runat="server" Placeholder="Enter Your First Name" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="First Name is required" ForeColor="Red" />
                </div>
                <div class="mb-3">
                    <label for="signupEmail" class="form-label">Email address</label>
                    <asp:TextBox ID="TextBox5" runat="server" TextMode="Email" Placeholder="Enter Your Email Id" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox5" ErrorMessage="Email is required" ForeColor="Red" />
                </div>
                <div class="mb-3">
                    <label for="signupPassword" class="form-label">Password</label>
                    <asp:TextBox ID="TextBox7" runat="server" TextMode="Password" Placeholder="Enter Your Password" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox7" ErrorMessage="Password is required" ForeColor="Red" />
                </div>
                <div class="d-grid">
                    <asp:LinkButton ID="LinkButton4" runat="server" Text="Sign Up" CssClass="btn btn-success" />
                </div>
            </div>

            <div class="text-center mt-4">
                <a href="javascript:void(0);" onclick="showSignup()">Create New Account</a>
            </div>
        </div>
    </form>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

