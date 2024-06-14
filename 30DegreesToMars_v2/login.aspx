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
                   <img src="img/logo.png" style="width: 150px; height: 150px" alt="Logo"/>
                    <asp:Label ID="Label1" runat="server" CssClass="item1" Text="30° TO MARS" Style="font-size: 70px; color: white;"></asp:Label>
                </div>
            </div>
            <nav class="navbar">
                <ul>
                    <li><a href="#" class="list">Planet</a></li>
                    <li><a href="#" class="list">Program</a></li>
                    <li><a href="#" class="list">About Us</a></li>
                </ul>
            </nav>
        </div>
        <!-- Main -->
        <div class="login-wrap">
            <div class="login-html">
                <input id="tab-1" type="radio" name="tab" value="1" class="sign-in" AutoPostBack="true" Checked="true" OnCheckedChanged="Tab_CheckedChanged"/><label for="tab-1" class="tab">Sign In</label>
                <input id="tab-2" type="radio" name="tab" value="2" class="sign-up" AutoPostBack="true" OnCheckedChanged="Tab_CheckedChanged"/><label id="tab2" for="tab-2" class="tab">Sign Up</label>
                <div class="login-form">
                    <div class="sign-in-htm">
                        <div class="group">
                            <label for="user" class="label">Username <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="userSI" runat="server" ErrorMessage="REQUIRED" Style="font-size: 15px; color: red;"></asp:RequiredFieldValidator></label>
                            <asp:TextBox ID="userSI" runat="server" type="text" class="input" ></asp:TextBox>
                        </div>
                        <div class="group">
                            <label for="pass" class="label">Password <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="passSI" runat="server" ErrorMessage="REQUIRED" Style="font-size: 15px; color: red;"></asp:RequiredFieldValidator></label>
                            <asp:TextBox ID="passSI" runat="server" type="password" class="input" data-type="password" ></asp:TextBox>
                        </div>
                        <div class="group">
                            <input id="check" type="checkbox" class="check" checked>
                            <label for="check"><span class="icon"></span>Keep me Signed in</label>
                        </div>
                        <div class="group">
                             <asp:Button ID="Button2" runat="server" class="button" Text="Sign In" OnClick="SignIn" OnClientClick="toggleRequired('signin')" />
                        </div>
                        <asp:Label ID="Label2" runat="server" Text="Invalid Username and Password" Style="font-size: 15px; color: red;" Visible="false"></asp:Label>
                        
                        <div class="hr"></div>
                        <div class="foot-lnk">
                            <a href="#forgot">Forgot Password?</a>
                        </div>
                    </div>
                    <div class="sign-up-htm">
                        <div class="group">
                            <label for="fname" class="label">First Name <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="fname" runat="server" ErrorMessage="REQUIRED" Style="font-size: 15px; color: red;"></asp:RequiredFieldValidator></label>
                            <asp:TextBox ID="fname" runat="server" type="text" class="input"></asp:TextBox>
                        </div>
                        <div class="group">
                            <label for="lname" class="label">Last Name <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="lname" runat="server" ErrorMessage="REQUIRED" Style="font-size: 15px; color: red;"></asp:RequiredFieldValidator></label>
                            <asp:TextBox ID="lname" runat="server" type="text" class="input" ></asp:TextBox>
                       <div class="group">
                                <br /><label for="dob" class="label">Date of Birth <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="dob" runat="server" ErrorMessage="REQUIRED" Style="font-size: 15px; color: red;"></asp:RequiredFieldValidator></label>
                                <asp:TextBox ID="dob" runat="server" type="date" class="input" ></asp:TextBox>
                        </div>
                        <div class="group">
                                <label for="user" class="label">Username <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="userSU" runat="server" ErrorMessage="REQUIRED" Style="font-size: 15px; color: red;"></asp:RequiredFieldValidator></label>
                                <asp:TextBox ID="userSU" runat="server" type="text" class="input" ></asp:TextBox>
                        </div>
                        <div class="group">
                                <label for="pass" class="label">Password <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="passSU" runat="server" ErrorMessage="REQUIRED" Style="font-size: 15px; color: red;"></asp:RequiredFieldValidator></label>
                                <asp:TextBox ID="passSU" runat="server" type="password" class="input" data-type="password" ></asp:TextBox>
                        </div>
                        <div class="group">
                                <label for="pass" class="label">Repeat Password <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="rpassSU" runat="server" ErrorMessage="REQUIRED" Style="font-size: 15px; color: red;"></asp:RequiredFieldValidator></label>
                                <asp:TextBox ID="rpassSU" runat="server" type="password" class="input" data-type="password" ></asp:TextBox>
                        </div>

                            <div class="group">
                                <asp:Button ID="Button1" runat="server" class="button" Text="Sign Up" OnClick="SignUp" OnClientClick="toggleRequired('signup')" />
                            </div>
                            <asp:CompareValidator ID="PasswordCompareValidator" runat="server"
                            ControlToValidate="rpassSU" ControlToCompare="passSU" Style="font-size: bold 12px; color: red;"
                            ErrorMessage="PASSWORDS DON'T MATCH"></asp:CompareValidator>
                        </div>
                    </div>
                </div>
            </div>
            </div>
            <div class="footer-container">
                <asp:Label ID="Label8" runat="server" Text="TALK TO US" Style="font-size: 20px; font-family: 'Arial Rounded MT';"></asp:Label>
                <asp:Label ID="Label9" runat="server" class="text-footer" Text="(04) 298 3985 2092"></asp:Label>
                <asp:Label ID="Label10" runat="server" class="text-footer" Text="+76 209 1092 4095"></asp:Label>
                <asp:HyperLink ID="HyperLink1" runat="server" class="text-footer">info@greenhouseproject.com</asp:HyperLink>
            </div>
    </form>
</body>
</html>

