<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Ecommerce.Admin.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Assets/css/animate.css" rel="stylesheet" />
    <link href="../Assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../Assets/css/font-awesome.min.css" rel="stylesheet" />
    <link href="../Assets/css/main.css" rel="stylesheet" />
    <link href="../Assets/css/prettyPhoto.css" rel="stylesheet" />
    <link href="../Assets/css/price-range.css" rel="stylesheet" />
    <link href="../Assets/css/responsive.css" rel="stylesheet" />
    <script src="../Assets/js/bootstrap.min.js"></script>
    <script src="../Assets/js/contact.js"></script>
    <script src="../Assets/js/gmaps.js"></script>
    <script src="../Assets/js/html5shiv.js"></script>
    <script src="../Assets/js/jquery.js"></script>
    <script src="../Assets/js/jquery.prettyPhoto.js"></script>
    <script src="../Assets/js/jquery.scrollUp.min.js"></script>
    <script src="../Assets/js/main.js"></script>
    <script src="../Assets/js/price-range.js"></script>
    
</head>
<body>
    <section id="form"><!--form-->
		<div class="container">
			<div class="row">
				<div class="col-sm-4 col-sm-offset-1">
					<div class="login-form"><!--login form-->
						<h2>Login to your account</h2>
                        <!--login form-->

                         <form id="form1" runat="server">
                        <asp:TextBox ID="TextBoxUserName" runat="server" placeholder="UserName"  ></asp:TextBox>
                        <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
                    							<span>
                 <asp:CheckBox ID="CheckBoxLogin" runat="server" Text="Keep me signed in" CssClass="checkbox" />

							</span>
                  <asp:Button ID="ButtonLogin" runat="server" OnClick="ButtonLogin_Click" Text="تسجيل" Width="66px" CssClass="btn btn-default" />


                        <!--/login form-->
					</div><!--/login form-->
				</div>
				<div class="col-sm-1">
					<h2 class="or">OR</h2>
				</div>
				<div class="col-sm-4">
					<div class="signup-form"><!--sign up form-->
						<h2>New User Signup!</h2>
                        
                         <asp:TextBox ID="TextBox1f" runat="server" placeholder="UserName" Width="300px" Color="#696763" Font-Size="20px" margin-bottom="30px" ></asp:TextBox>
                         <asp:TextBox ID="TextBox2f2" runat="server" placeholder="Email"  Width="300px" Color="#696763" Font-Size="20px" margin-bottom="30px" ></asp:TextBox>
                         <asp:TextBox ID="TextBox1fpass" runat="server" TextMode="Password" placeholder="Password"  Width="300px" Color="#696763" Font-Size="20px" margin-bottom="30px"></asp:TextBox>

                          <asp:Button ID="Button1" runat="server" OnClick="ButtonSignup_Click" Text="تسجيل" Width="66px" CssClass="btn btn-default" />

					</div><!--/sign up form-->
				</div>
			</div>
		</div>
        						</form>

	</section><!--/form-->
</body>
</html>
