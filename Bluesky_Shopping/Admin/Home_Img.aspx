<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Home_Img.aspx.cs" Inherits="Bluesky_Shopping.Admin.Home_Img" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                <h3 class="tittle-w3layouts my-lg-4 my-4">Home Small Banner </h3>
    <h3>Small banner1 </h3>
    <table class="table">
        <tr>
            <td>Image 1</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>

        </tr>
        <tr>
            <td>
                Name1
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Name2
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Name3
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>

    <h3>Small banner 2 </h3>
    <table class="table">
        <tr>
            <td>Image 1</td>
            <td>
                <asp:FileUpload ID="FileUpload2" runat="server" />
            </td>

        </tr>
        <tr>
            <td>
                Name1
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Name2
            </td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Name3
            </td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>

</asp:Content>
