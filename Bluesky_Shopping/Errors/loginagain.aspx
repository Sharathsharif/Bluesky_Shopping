<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginagain.aspx.cs" Inherits="Bluesky_Shopping.Errors.WebForm1" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login Again</title>
    <link rel="stylesheet" href="css/style-freedom.css">
    <link href="https://fonts.googleapis.com/css?family=Quicksand:400,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Source+Serif+Pro:400,700&display=swap" rel="stylesheet">
</head>
<body>
    <form runat="server">
    <section class="w3l-errorpage">
        <div class="error404">
            <div class="wrapper">
                <div class="logo-brand">
                <asp:ImageButton ID="ImageButton1" runat="server" PostBackUrl="~/Login/UserLogin.aspx" ImageUrl="~/Login/images/BlueSky logo 4.png.svg" style="margin-left:15% ; width:50%" />
                    <%--<h1><a class="brand-logo-text" href="index.html">Candy
                        <div class="position-head">
                            <span class="">E</span>rror
                        </div>
                        Page</a></h1>--%>

                    <!-- if logo is image enable this   
            <a class="brand-logo" href="#index.html">
                <img src="image-path" alt="Your logo" title="Your logo" style="height:35px;" />
            </a> -->
                </div>
            </div>
            <div class="wrapper">
                <div class="midle-page">
                    <section class="error-container">
                        <span><span>4</span></span>
                        <span>0</span>
                        <span><span>4</span></span>
                    </section>
                    <h1>Page Not Found</h1>
                    <p class="zoom-area para">
                        We're sorry, the page you requested could not be found, Please go back to the
                    Login Page and Try again !!!.
                    </p>

                    <div class="link-container">
                        <a href="../Login/UserLogin.aspx" class="more-link">Login Again......</a>

                    </div>
                </div>
                <div class="columns-copy ">
                    <p class="copy-footer">
                        © 2024 BlueSKy Shopping. All rights reserved | Designed by <a
                            href="#">Sharath</a>
                    </p>
                </div>
            </div>
        </div>
    </section>
        </form>
</body>
</html>
