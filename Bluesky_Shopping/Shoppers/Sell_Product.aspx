<%@ Page Title="" Language="C#" MasterPageFile="~/Shoppers/Shop_home.Master" AutoEventWireup="true" CodeBehind="Sell_Product.aspx.cs" Inherits="Bluesky_Shopping.Shoppers.Sell_Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table  class="table">
         <tr>
            <td>Select Product Category</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Mobiles & Tablets</asp:ListItem>
                    <asp:ListItem>TV & Applicances</asp:ListItem>
                    <asp:ListItem>Electronics</asp:ListItem>
                    <asp:ListItem>Fashion</asp:ListItem>
                    <asp:ListItem>Beauty</asp:ListItem>
                    <asp:ListItem>Home & Kitchen</asp:ListItem>
                    <asp:ListItem>Furniture</asp:ListItem>



                </asp:DropDownList></td>

        </tr>
        <tr>
            <td>Product Name</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" required="required"></asp:TextBox></td>

        </tr>
        <tr>
            <td>Product Price in rs</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>Rs</asp:ListItem>
                </asp:DropDownList> <asp:TextBox ID="TextBox2" runat="server" TextMode="Number" required="required"></asp:TextBox></td>

        </tr>
        <tr>
            <td>Original Price Of the Product</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" required="required" TextMode="Number"></asp:TextBox></td>

        </tr>
        <tr>
            <td>Product Description</td>
            <td>
                <asp:TextBox ID="TextBox4" TextMode="MultiLine" runat="server" Height="148px" Width="273px" required="required"></asp:TextBox></td>

        </tr>
        <tr>
            <td>Total Stock</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" required="required"></asp:TextBox></td>

        </tr>
        <tr>
            <td>Upload Product image 1 (main image)</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" required="required" /></td>

        </tr>
        <tr>
            <td>Upload Product image 2</td>
            <td>
                <asp:FileUpload ID="FileUpload2" runat="server" /></td>

        </tr>
        <tr>
            <td>Upload Product image 3</td>
            <td>
                <asp:FileUpload ID="FileUpload3" runat="server" /></td>

        </tr>

         <tr>
            <td colspan="2" class=" align-content-center">
                <asp:Button ID="Button1" runat="server" Text="Sell This Product" CssClass="btn btn-success"  OnClick="LinkButton1_Click"/>
            

        </tr>

    </table>
</asp:Content>
