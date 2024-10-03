<%@ Page Title="" Language="C#" MasterPageFile="~/Shoppers/Shop_home.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Bluesky_Shopping.Shoppers.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Raise Query or Ask any doubts</h1>
    <br />
    <br />

    <asp:Label ID="Label2" runat="server" Text="Subject/Regarding"></asp:Label>

<p>
    <asp:TextBox ID="TextBox2" runat="server" placeholder="Subject" Width="70%"></asp:TextBox>
</p>
    <br />

    <asp:Label ID="Label1" runat="server" Text="Describe briefly about your concern:"></asp:Label>
    <p>
        <asp:TextBox ID="TextBox1" TextMode="MultiLine" placeholder="Describe your concern" runat="server" Height="368px" Width="90%"></asp:TextBox></p>
    <br />
    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Submit</asp:LinkButton>
</asp:Content>
