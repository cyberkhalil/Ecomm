<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Orders.aspx.cs" Inherits="Ecommerce.Admin.Orders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            color: #000099;
            font-weight: bold;
            font-size: large;
        }
        .auto-style8 {
            height: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified">
        <tr>
            <td class="auto-style7">Show order by User<br />
                <br />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td><strong>
                <asp:Label ID="Label3" runat="server" BorderColor="#000099" CssClass="auto-style7" ForeColor="#000099" Text="Search for User   " style="font-size: small"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" BorderColor="White" BorderStyle="Solid"  placeholder="search"></asp:TextBox>
                </strong>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="O_Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" PageSize="5">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="O_Id" HeaderText="O_Id" ReadOnly="True" SortExpression="O_Id" Visible="False" />
                        <asp:BoundField DataField="P_Name" HeaderText="Product Name" SortExpression="P_Name" />
                        <asp:BoundField DataField="User_Name" HeaderText="User Name" SortExpression="User_Name" />
                        <asp:BoundField DataField="Date" HeaderText="Date Of Order" SortExpression="Date" />
                        <asp:BoundField DataField="countOfProduct" HeaderText="Quantity" SortExpression="countOfProduct" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT * FROM [Orders] WHERE ([User_Name] LIKE '%' + @User_Name + '%')">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="User_Name" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">
                <br />
                <br />
                <strong>
                <asp:Label ID="Label4" runat="server" BorderColor="#000099" CssClass="auto-style7" ForeColor="#000099" Text="To Search all Order " style="font-size: small"></asp:Label>
                <asp:Button ID="Button1" runat="server" CssClass="btn-primary disabled active" Text="Click here" OnClick="Button1_Click" />
                </strong>
            </td>
            <td class="auto-style8"></td>
        </tr>
        <tr>
            <td>
                <br />
                <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="O_Id" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" PageSize="5" Visible="False">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="O_Id" HeaderText="O_Id" ReadOnly="True" SortExpression="O_Id" Visible="False" />
                        <asp:BoundField DataField="P_Name" HeaderText="Product Name" SortExpression="P_Name" />
                        <asp:BoundField DataField="User_Name" HeaderText="User Name" SortExpression="User_Name" />
                        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                        <asp:BoundField DataField="countOfProduct" HeaderText="Quantity" SortExpression="countOfProduct" />
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Orders] WHERE [O_Id] = @O_Id" InsertCommand="INSERT INTO [Orders] ([O_Id], [P_Name], [User_Name], [Date], [countOfProduct]) VALUES (@O_Id, @P_Name, @User_Name, @Date, @countOfProduct)" SelectCommand="SELECT * FROM [Orders]" UpdateCommand="UPDATE [Orders] SET [P_Name] = @P_Name, [User_Name] = @User_Name, [Date] = @Date, [countOfProduct] = @countOfProduct WHERE [O_Id] = @O_Id">
                    <DeleteParameters>
                        <asp:Parameter Name="O_Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="O_Id" Type="Int32" />
                        <asp:Parameter Name="P_Name" Type="String" />
                        <asp:Parameter Name="User_Name" Type="String" />
                        <asp:Parameter DbType="Date" Name="Date" />
                        <asp:Parameter Name="countOfProduct" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="P_Name" Type="String" />
                        <asp:Parameter Name="User_Name" Type="String" />
                        <asp:Parameter DbType="Date" Name="Date" />
                        <asp:Parameter Name="countOfProduct" Type="Int32" />
                        <asp:Parameter Name="O_Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
