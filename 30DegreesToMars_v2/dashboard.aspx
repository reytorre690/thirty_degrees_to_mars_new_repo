<%@ Page Language="C#" AutoEventWireup="true" CodeFile="dashboard.aspx.cs" Inherits="_30DegreesToMars_v2.dashboard" %>

<!-- #include file="navbar.html" -->

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dashboard</title>
</head>
<body style="background-color:darkgreen">
 <div class="row">
<table width="50%" align="center" cellpadding="2" cellspacing="2" border="0" bgcolor="#EAEAEA">
 <tr align="left" style="background-color:#b8fbff;color:Black;" >
     <td> Variable </td>                        
     <td> Date Recorded </td>            
     <td> Average Measurement </td>
 </tr>

 <%=Getreferencetable()%>

 </table>
 </div>
    </form>
</body>
</html>
