<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="EditUser.aspx.cs" Inherits="Ecommerce.Admin.EditUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style6 {
        height: 22px;
    }
    .auto-style7 {
        height: 22px;
        text-align: left;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified">
    <tr>
        <td><strong>
                <asp:Label ID="Label2" runat="server" BorderColor="#000099" CssClass="auto-style7" ForeColor="#000099" Text="Edit and Delete Users"></asp:Label>
                </strong></td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7"><strong>
                <asp:Label ID="Label3" runat="server" BorderColor="#000099" CssClass="auto-style7" ForeColor="#000099" Text="Search for User   " style="font-size: small"></asp:Label>
                </strong>
            <asp:TextBox ID="TextBox1" runat="server" BorderColor="White" BorderStyle="Solid"  placeholder="search" AutoPostBack="True"></asp:TextBox>
            <br />
        </td>
        <td class="auto-style6"></td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True" PageSize="4">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" Visible="False" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                    <asp:BoundField DataField="phoneNumber" HeaderText="phoneNumber" SortExpression="phoneNumber" />
                    <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                    <asp:BoundField DataField="Active" HeaderText="Active" SortExpression="Active" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Users] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Users] ([Id], [Name], [Password], [phoneNumber], [Type], [Active]) VALUES (@Id, @Name, @Password, @phoneNumber, @Type, @Active)" SelectCommand="SELECT * FROM [Users] WHERE ([Name] LIKE '%' + @Name + '%')" UpdateCommand="UPDATE [Users] SET [Name] = @Name, [Password] = @Password, [phoneNumber] = @phoneNumber, [Type] = @Type, [Active] = @Active WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="phoneNumber" Type="String" />
                    <asp:Parameter Name="Type" Type="String" />
                    <asp:Parameter Name="Active" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="Name" PropertyName="Text" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="phoneNumber" Type="String" />
                    <asp:Parameter Name="Type" Type="String" />
                    <asp:Parameter Name="Active" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
