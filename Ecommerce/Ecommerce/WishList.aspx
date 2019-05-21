<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="WishList.aspx.cs" Inherits="Ecommerce.WishList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 24px;
            font-weight: bold;
            color: #000099;
        }
        .auto-style2 {
            height: 24px;
            font-weight: bold;
            color: #000099;
            font-size: large;
            width: 468px;
        }
        .auto-style3 {
            height: 22px;
        }
        .auto-style4 {
            height: 22px;
            width: 468px;
        }
        .auto-style5 {
            width: 468px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <table class="nav-justified">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style1">Your WishList</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style3">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSourceWish" GridLines="Horizontal" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" PageSize="4" Width="468px">
                        <Columns>
                            <asp:BoundField DataField="pro" HeaderText="Product Name" SortExpression="pro" />
                            <asp:BoundField DataField="details" HeaderText="Details" SortExpression="details" HtmlEncode="False" />
                            <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
                            <asp:BoundField DataField="edate" HeaderText="Date" SortExpression="edate" DataFormatString="{0:d}" />
                            <asp:ImageField DataImageUrlField="pic" DataImageUrlFormatString="~\Assets\images\products\{0}" HeaderText="Photo">
                            </asp:ImageField>
                        </Columns>
                        <FooterStyle BackColor="White" ForeColor="#333333" />
                        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#487575" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#275353" />
                    </asp:GridView>
                    </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSourceWish" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [pro], [price], [details], [pic], [edate] FROM [WishList] WHERE ([Name] = @Name)">
                        <SelectParameters>
                            <asp:SessionParameter Name="Name" SessionField="UserName" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
</asp:Content>
