<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true"
    CodeBehind="AddProduct.aspx.cs" Inherits="Ecommerce.Admin.AddProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 147px;
        }

        .auto-style7 {
            width: 147px;
            height: 22px;
        }

        .auto-style8 {
            height: 22px;
        }

        .auto-style9 {
            width: 147px;
            height: 23px;
        }

        .auto-style10 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified">
        <tr>
            <td class="auto-style6">[P_Id]</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">[C_Id]</td>
            <td class="auto-style8">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Product Name</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Product date</td>
            <td>
                <br />
                <asp:TextBox ID="TextBoxCalender" runat="server"></asp:TextBox>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="..." BackColor="#FFFF99" BorderColor="#FFFFCC" CssClass="btn active" />
                <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Visible="False" Width="350px">
                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                    <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                    <TodayDayStyle BackColor="#CCCCCC" />
                </asp:Calendar>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">price</td>
            <td class="auto-style10">
                <asp:TextBox ID="TextBox4" runat="server" TextMode="Number"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">pic</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Product details</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" Height="44px" TextMode="MultiLine" Width="402px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td>
                <asp:Button ID="submit" runat="server" Text="submit" CssClass="btn btn-primary" OnClick="submit_Click" />
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
                <br />
                <asp:Label ID="LabelinsertPro" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
