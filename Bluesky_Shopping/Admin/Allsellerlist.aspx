<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Allsellerlist.aspx.cs" Inherits="Bluesky_Shopping.Admin.Allsellerlist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" CellPadding="4" ForeColor="#333333" GridLines="None" Height="131px" Width="1495px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Sho_Id" HeaderText="Shop Id" />
            <asp:BoundField DataField="Shop_Name" HeaderText="Shop Name" />
            <asp:BoundField DataField="Shop_Mail" HeaderText="Shop Mail" />
            <asp:BoundField DataField="Personal_Mail" HeaderText="Personal Mail" />
            <asp:BoundField DataField="Approve" HeaderText="Status" />

            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Button ID="Button3" runat="server" Text="View detail" BackColor="skyblue"/>
                   
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Button ID="Button1" runat="server" Text="Approve" BackColor="Green" ForeColor="White" CommandName="Approve" CommandArgument='<%# ((GridViewRow) Container).RowIndex %>' />
                    <asp:Button ID="Button2" runat="server" Text="Reject"  BackColor="Red" ForeColor="White" CommandName="Reject" CommandArgument='<%# ((GridViewRow) Container).RowIndex %>' />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
</asp:Content>
