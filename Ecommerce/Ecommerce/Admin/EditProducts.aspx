<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="EditProducts.aspx.cs" Inherits="Ecommerce.Admin.EditProducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            height: 18px;
        }
        .auto-style7 {
            font-size: large;
        }
        .auto-style8 {
            font-size: large;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified">
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>
                <asp:Label ID="Label2" runat="server" BorderColor="#000099" CssClass="auto-style7" ForeColor="#000099" Text="Edit and Delete Products"></asp:Label>
                <br />
                </strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="P_Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="P_Id" HeaderText="P_Id" ReadOnly="True" SortExpression="P_Id" Visible="False" />
                        <asp:BoundField DataField="C_Id" HeaderText="C_Id" SortExpression="C_Id" Visible="False" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="edate" DataFormatString="{0:d}" HeaderText="edate" SortExpression="edate" />
                        <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                        <asp:BoundField DataField="details" DataFormatString="{0:c}" HeaderText="details" SortExpression="details" HtmlEncode="False" />
                        <asp:ImageField DataImageUrlField="pic" DataImageUrlFormatString="~\Assets\images\products\{0}" HeaderText="photo">
                            <ControlStyle Height="150px" Width="170px" />
                        </asp:ImageField>
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Products] WHERE [P_Id] = @P_Id" InsertCommand="INSERT INTO [Products] ([P_Id], [C_Id], [Name], [edate], [price], [pic], [details]) VALUES (@P_Id, @C_Id, @Name, @edate, @price, @pic, @details)" SelectCommand="SELECT * FROM [Products]" UpdateCommand="UPDATE [Products] SET [C_Id] = @C_Id, [Name] = @Name, [edate] = @edate, [price] = @price, [pic] = @pic, [details] = @details WHERE [P_Id] = @P_Id">
                    <DeleteParameters>
                        <asp:Parameter Name="P_Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="P_Id" Type="Int32" />
                        <asp:Parameter Name="C_Id" Type="Int32" />
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="edate" Type="DateTime" />
                        <asp:Parameter Name="price" Type="Decimal" />
                        <asp:Parameter Name="pic" Type="String" />
                        <asp:Parameter Name="details" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="C_Id" Type="Int32" />
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="edate" Type="DateTime" />
                        <asp:Parameter Name="price" Type="Decimal" />
                        <asp:Parameter Name="pic" Type="String" />
                        <asp:Parameter Name="details" Type="String" />
                        <asp:Parameter Name="P_Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
