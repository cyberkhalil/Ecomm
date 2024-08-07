﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="EditAndAddCategories.aspx.cs" Inherits="Ecommerce.Admin.EditAndAddCategories_aspx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            height: 22px;
        }
        .auto-style7 {
            font-size: x-large;
        }
        .auto-style8 {
            height: 22px;
            width: 289px;
        }
        .auto-style9 {
            width: 289px;
            text-align: left;
        }
        .auto-style10 {
            height: 22px;
            text-align: left;
        }
        .auto-style11 {
            height: 22px;
            width: 289px;
            text-align: right;
        }
    .auto-style12 {
        padding-right: 35px;
        text-align: left;
    }
        .auto-style13 {
            height: 22px;
            width: 289px;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified">
        <tr>
            <td class="auto-style10" colspan="2"><strong>
                <asp:Label ID="Label1" runat="server" BorderColor="#000099" CssClass="auto-style7" ForeColor="#000099" Text="AddCategory"></asp:Label>
                <br />
                                <br />
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style13"><strong>[C_Id]</strong></td>
            <td class="auto-style10">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>CategoryName</strong></td>
            <td class="text-left">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">
                <div class="text-right">
                   
                    <!-- TODO   اعمل خيار انه ما يتفعل الزر الا لما ينضغط عليه بس ..  -->
                    <br />
                </div>
                <br />
            </td>
            <td class="auto-style10">
                    <asp:Button ID="Button1" runat="server" CssClass="btn-primary disabled active" OnClick="Button1_Click" Text="submit" />
                   
                    <br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Categories] WHERE [C_Id] = @C_Id" InsertCommand="INSERT INTO [Categories] ([C_Id], [C_Name]) VALUES (@C_Id, @C_Name)" SelectCommand="SELECT * FROM [Categories]" UpdateCommand="UPDATE [Categories] SET [C_Name] = @C_Name WHERE [C_Id] = @C_Id">
                    <DeleteParameters>
                        <asp:Parameter Name="C_Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="C_Id" Type="Int32" />
                        <asp:Parameter Name="C_Name" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="C_Name" Type="String" />
                        <asp:Parameter Name="C_Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:Label ID="LabelMessage" runat="server"></asp:Label>
                </td>
        </tr>

        <tr>
            
            <td class="auto-style8"></td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="auto-style13"><strong>
                <asp:Label ID="Label2" runat="server" BorderColor="#000099" CssClass="auto-style7" ForeColor="#000099" Text="EditCategory"></asp:Label>
                </strong></td>
            <td class="auto-style6"></td>
        </tr><tr>
            <td class="auto-style12" colspan="2">
                <div class="text-left">
                <br />
                <br />
                Search Category
                <asp:TextBox ID="TextBox3" runat="server" AutoPostBack="True" Height="23px" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
                <br />
                <br />
                </div>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="10" DataKeyNames="C_Id" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" PageSize="4">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="C_Id" HeaderText="C_Id" ReadOnly="True" SortExpression="C_Id" Visible="False" />
                        <asp:BoundField DataField="C_Name" HeaderText="C_Name" SortExpression="C_Name" />
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Categories] WHERE [C_Id] = @C_Id" InsertCommand="INSERT INTO [Categories] ([C_Id], [C_Name]) VALUES (@C_Id, @C_Name)" SelectCommand="SELECT * FROM [Categories] WHERE ([C_Name] LIKE '%' + @C_Name + '%')" UpdateCommand="UPDATE [Categories] SET [C_Name] = @C_Name WHERE [C_Id] = @C_Id">
                    <DeleteParameters>
                        <asp:Parameter Name="C_Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="C_Id" Type="Int32" />
                        <asp:Parameter Name="C_Name" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox3" Name="C_Name" PropertyName="Text" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="C_Name" Type="String" />
                        <asp:Parameter Name="C_Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
            </td>
        </tr>
    </table>
</asp:Content>
