﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="summary.aspx.cs" Inherits="_30DegreesToMars_v2.summary" %>

<!-- #include file="navbar.html" -->

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Summary</title>
</head>
<body>
    <form id="form1" runat="server">
         <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
    <div  class="row">
       <asp:Label ID="Label1" runat="server" Text="Fitler by Name:"></asp:Label>
       <asp:TextBox ID="TextBoxName" runat="server"></asp:TextBox>
       <asp:Button ID="ButtonFilter" runat="server" Text="Filter" OnClick="ButtonFilter_Click"/>
       <asp:Button ID="ButtonClear" runat="server" Text="Clear Filter" OnClick="ButtonClear_Click"/>-
    </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" AllowSorting="true" OnSorting="GridView1_Sorting">
    <Columns>
        <asp:BoundField DataField="ControlParameter" HeaderText="ControlParameter" SortExpression="ControlParameter" />
        <asp:BoundField DataField="CurrentValue" HeaderText="CurrentValue" SortExpression="CurrentValue" />
        <asp:BoundField DataField="Unit" HeaderText="Unit" SortExpression="Unit" />
        <asp:BoundField DataField="Dateupdated" HeaderText="Dateupdated" SortExpression="Dateupdated" />
    </Columns>
    </asp:GridView>
        </div>
            <table width="100%" align="center" cellpadding="2" cellspacing="2" border="0" bgcolor="#EAEAEA" >
        <tr align="left" style="background-color:#004080;color:White;" >
            <td> Status </td>                        
            <td> Severity </td>            
            <td> Message </td>                        
        </tr>

        <%=getWhileLoopData()%>

        </table>
            </div>
             </div>
    </form>
</body>
</html>
