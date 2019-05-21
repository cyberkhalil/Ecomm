<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddAds.aspx.cs" Inherits="Ecommerce.Admin.AddAds" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            color: #000099;
            font-weight: bold;
            height: 22px;
            font-size: x-large;
        }
        .auto-style8 {
            height: 22px;
        }
        .auto-style9 {
            height: 24px;
        }
        .auto-style10 {
            height: 22px;
            text-align: left;
        }
        .auto-style11 {
            height: 24px;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified">
        <tr>
            <td class="auto-style7">Add Ad&#39;s</td>
            <td class="auto-style8"></td>
        </tr>
        <tr>
            <td class="auto-style9">[Id]</td>
            <td class="auto-style11">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td class="auto-style9">Title</td>
            <td class="auto-style11">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Details</td>
            <td class="auto-style10">
                <asp:TextBox ID="TextBox2" runat="server" Height="61px" TextMode="MultiLine" Width="342px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Insert Image</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td>Ad&#39;s date</td>
            <td class="text-left">
                <asp:TextBox ID="TextBoxCalender" runat="server"></asp:TextBox>
                <asp:Button ID="Button2" runat="server" Text="..." BackColor="#FFFF99" BorderColor="#FFFFCC" CssClass="btn active" OnClick="Button2_Click" />
                <br />
                <asp:Calendar ID="Calendar1" runat="server"  BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Visible="False" Width="350px" OnSelectionChanged="Calendar1_SelectionChanged">
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
            <td>&nbsp;</td>
            <td class="text-left">
                <asp:Button ID="Button3" runat="server" CssClass="btn btn-primary" Text="submit" OnClick="Button3_Click" />
                <br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Ads] WHERE [Id_ads] = @Id_ads" InsertCommand="INSERT INTO [Ads] ([Id_ads], [details_ads], [date_ads], [pic_ads]) VALUES (@Id_ads, @details_ads, @date_ads, @pic_ads)" SelectCommand="SELECT * FROM [Ads]" UpdateCommand="UPDATE [Ads] SET [details_ads] = @details_ads, [date_ads] = @date_ads, [pic_ads] = @pic_ads WHERE [Id_ads] = @Id_ads">
                    <DeleteParameters>
                        <asp:Parameter Name="Id_ads" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Id_ads" Type="Int32" />
                        <asp:Parameter Name="details_ads" Type="String" />
                        <asp:Parameter Name="date_ads" Type="DateTime" />
                        <asp:Parameter Name="pic_ads" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="details_ads" Type="String" />
                        <asp:Parameter Name="date_ads" Type="DateTime" />
                        <asp:Parameter Name="pic_ads" Type="String" />
                        <asp:Parameter Name="Id_ads" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:Label ID="Label1" runat="server"></asp:Label>
                <br />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
