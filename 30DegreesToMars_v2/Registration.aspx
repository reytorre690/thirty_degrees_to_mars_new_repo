<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="_30DegreesToMars_v2.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>
    <link rel="stylesheet" type="text/css" href="Design.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="header-container">
            <div class="logo">
                <div class="logo-content">
                    <img src="img/logo.png" style="width: 150px; height: 150px" alt="Logo"/>
                    <asp:Label ID="Label6" runat="server" CssClass="item1" Text="30° TO MARS" Style="font-size: 70px; font-family: 'Arial Rounded MT';"></asp:Label>
                </div>
            </div>
        </div>

        <div class="main-container">
            <div class="table">
                <div class="th">
                    <asp:Label ID="Label8" runat="server" Text="SIGN UP FORM"></asp:Label>
                </div>
                <div class="tr">
                    <div class="td">
                        <asp:Label ID="Label1" runat="server" Text="First Name:"></asp:Label>
                        <asp:TextBox ID="TextBox1" class="ip1" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="tr">
                    <div class="td">
                        <asp:Label ID="Label2" runat="server" Text="Last Name:"></asp:Label>
                        <asp:TextBox ID="TextBox2" class="ip1" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="tr">
                    <div class="td">
                        <asp:Label ID="Label3" runat="server" Text="Username:"></asp:Label>
                        <asp:TextBox ID="TextBox3" class="ip1" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="tr">
                    <div class="td">
                        <asp:Label ID="Label4" runat="server" Text="Password:"></asp:Label>
                        <asp:TextBox ID="TextBox4" class="ip1" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="tr">
                    <div class="td">
                        <asp:Label ID="Label5" runat="server" Text="Confirm Pass:"></asp:Label>
                        <asp:TextBox ID="TextBox5" class="ip1" runat="server"></asp:TextBox>
                       </div>
                </div>
                <div class="tr">
                     <div class="td">
                           <asp:Label ID="Label9" runat="server" Text="Date of Birth"></asp:Label>
                          <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                    </div>
                  </div>
                <div class="td">
                    <asp:Button ID="Button1" runat="server" class="subbutton" Text="SUBMIT" Onclick="button_pressed" />
                </div>
                <div class="tr">
                    <br />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
