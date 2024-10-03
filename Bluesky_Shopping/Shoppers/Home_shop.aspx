<%@ Page Title="" Language="C#" MasterPageFile="~/Shoppers/Shop_home.Master" AutoEventWireup="true" CodeBehind="Home_shop.aspx.cs" Inherits="Bluesky_Shopping.Shoppers.Home_shop" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Product Listings</h2>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" Width="896px" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Product_Id" HeaderText="Product Id" ReadOnly="True" />
            <asp:ImageField DataImageUrlField="Image1" ReadOnly="True" ControlStyle-Width="100px" 
            ControlStyle-Height="100px" 
            ControlStyle-CssClass="img-responsive" >
                
            </asp:ImageField>
            <asp:BoundField DataField="Category" HeaderText="Category" ReadOnly="True" />
            <asp:BoundField DataField="Product_Name" HeaderText="Product_Name" />
            <asp:BoundField DataField="Product_Price" HeaderText="Product_Price" />
            <asp:BoundField DataField="Original_Price" HeaderText="Original_Price" />
            <asp:BoundField DataField="Product_Description" HeaderText="Description"  ItemStyle-CssClass="truncated-description" />
            <asp:BoundField DataField="Stock" HeaderText="Stock" />
            <asp:TemplateField>
                <EditItemTemplate>
                    <asp:Button ID="Button6" runat="server" BackColor="#33CC33" CommandName="update" ForeColor="#CCFFFF" Text="Update" />
                    <asp:Button ID="Button7" runat="server" BackColor="#FF5050" CommandName="cancel" ForeColor="White" Text="Cancel" />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Button ID="Button5" runat="server" CommandName="edit" Text="Edit" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>

</asp:Content>
