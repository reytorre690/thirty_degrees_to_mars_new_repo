<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="_30DegreesToMars_v2.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="Design.css" />
    <title>Green Mars</title>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Header -->
        <div class="header-container">
            <div class="logo">
                <div class="logo-content">
                <img src="img/logo.png" style="width: 150px; height: 150px" alt="Logo"> 
                <asp:Label ID="Label1" runat="server" CssClass="item1" Text="30° TO MARS" Style="font-size: 70px; font-family: 'Arial Rounded MT';"></asp:Label>
            </div>
                </div>
            <nav class="navbar">
                <ul>
                    <li><a href="#">Planet</a></li>
                    <li><a href="#">Program</a></li>
                    <li><a href="#">About Us</a></li>
                </ul>
            </nav>
             </div>
        <!-- Main -->
        <div class="main-container">
            <div class="table">
                <div class="th">
                    <asp:Label ID="Label2" runat="server" Text="LOG IN"></asp:Label>
                </div>
                <div class="tr">
                    <div class="td">
                        <asp:Label ID="Label3" runat="server" Text="USERNAME:"></asp:Label>
                    </div>
                    <div class="td">
                        <asp:TextBox ID="TextBox1" class="ip1" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="tr">
                    <div class="td">
                        <asp:Label ID="Label4" runat="server" Text="PASSWORD:"></asp:Label>
                    </div>
                    <div class="td">
                        <asp:TextBox ID="TextBox2" class="ip1" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="tr">
                    <div class="td">
                        <asp:CheckBox ID="CheckBox1" runat="server" class="rememberme" Text="Remember me?" />
                        <a href="registration.aspx">Create an account.</a>
                    </div>
                    
                </div>
                <div class="tr">
                    <div class="td">
                        <asp:Button ID="Button2" runat="server" class="subbutton" Text="SUBMIT" OnClick="Button2_Click " />
                        <div class="line"></div>
                        <i>
                            <asp:Label ID="Label6" runat="server" class="ofisg" Text="Our family is growing."></asp:Label></i>
                        <asp:Label ID="Label5" runat="server" class="pmg1" Text="Project Mars"></asp:Label>
                        <asp:Label ID="Label7" runat="server" class="pmg2" Text="Greenhouse"></asp:Label>
                    </div>
                </div>
            </div>
            </div>
           <!-- <div class="th">
                <img src="StockCake-Mars Rover Exploration_1713601338.jpg" style="width: 450px; height: 492px" alt="Image">
            </div>
        </div> -->
        <div class="footer-container">
            <asp:Label ID="Label8" runat="server" Text="TALK TO US" Style="font-size: 20px; font-family: 'Arial Rounded MT';"></asp:Label>
            <asp:Label ID="Label9" runat="server" class="text-footer" Text="(04) 298 3985 2092"></asp:Label>
            <asp:Label ID="Label10" runat="server" class="text-footer" Text="+76 209 1092 4095"></asp:Label>
            <asp:HyperLink ID="HyperLink1" runat="server" class="text-footer">info@greenhouseproject.com</asp:HyperLink>
        </div>
    </form>
</body>
</html>