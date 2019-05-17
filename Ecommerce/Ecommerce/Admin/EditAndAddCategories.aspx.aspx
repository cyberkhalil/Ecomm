<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="EditAndAddCategories.aspx.aspx.cs" Inherits="Ecommerce.Admin.EditAndAddCategories_aspx" %>
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
            <td class="auto-style8"><strong>[C_Id]</strong></td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>CategoryName</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">
                <div class="text-right">
                    <asp:Button ID="Button1" runat="server" CssClass="btn-primary active" OnClick="Button1_Click" Text="submit" />
                    <br />
                </div>
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
                <br />
            </td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8"></td>
            <td class="auto-style6"></td>
        </tr>
    </table>
</asp:Content>
