<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Bluesky_Shopping.Admin.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  

    <div class="d-flex justify-content-center align-items-center vh-100 p-5 m-5" >
        <table class="table table-bordered mx-auto ">
            <tr>
                <td class="fw-bold">Total Number of Approved Seller</td>
                <td>:</td>

                <td class="text-danger fw-bolder">
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label></td>

            </tr>
            <tr>
                <td class="fw-bold">Total Number of Users</td>
                <td>:</td>

                <td class="text-danger fw-bolder" >
                    <asp:Label ID="Label2" runat="server" Text=""></asp:Label></td>

            </tr>
            <tr>
                <td class="fw-bold">Total Number of Active Product</td>
                <td>:</td>

                <td class="text-danger fw-bolder" >
                    <asp:Label ID="Label3" runat="server" Text=""></asp:Label></td>

            </tr>
        </table>
    </div>
</asp:Content>
