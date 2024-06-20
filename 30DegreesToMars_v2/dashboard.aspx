<%@ Page Language="C#" AutoEventWireup="true" CodeFile="dashboard.aspx.cs" Inherits="_30DegreesToMars_v2.dashboard" %>

<!-- #include file="navbar.html" -->

<!DOCTYPE html>

<!--html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dashboard</title>
</head>
<body style="background-color:darkgreen">
    <form id="form1" runat="server">

 <center>
    <asp:Table ID="Table1" runat="server" style="background-color:whitesmoke ; margin-top:200px">

            <asp:TableRow>
                 <asp:TableCell ColumnSpan="2">
                     <asp:Label ID="label1" runat="server" Text="Environmental Dashboard" Style="font-size: 40px; font-family: Arial, Helvetica, sans-serif"> </asp:Label>
                 </asp:TableCell>
               
               <asp:TableCell></asp:TableCell>
               

           </asp:TableRow>

           <asp:TableRow>
                 <asp:TableCell>
                      <asp:Label ID="label2" runat="server" Text="Temperature" Style="font-size: 20px; font-family: Arial, Helvetica, sans-serif"> </asp:Label>
                  </asp:TableCell>

                  <asp:TableCell>
                       <asp:TextBox ID="TextBox1" runat="server" Text="chart with live data and averages" Style="background-color: aqua; width: 300px; height: 50px"> </asp:TextBox>
                                    
                  </asp:TableCell>

           </asp:TableRow>

         <asp:TableRow>
       <asp:TableCell>
            <asp:Label ID="label5" runat="server" Text="Oxygen"  Style="font-size: 20px; font-family: Arial, Helvetica, sans-serif"> </asp:Label>
        </asp:TableCell>

        <asp:TableCell>
             <asp:TextBox ID="TextBox3" runat="server"  Text="chart with live data and averages" Style="background-color: aqua; width: 300px; height: 50px"> </asp:TextBox>
        </asp:TableCell>

 </asp:TableRow>

         <asp:TableRow>
       <asp:TableCell>
            <asp:Label ID="label6" runat="server" Text="Humidity"  Style="font-size: 20px; font-family: Arial, Helvetica, sans-serif"> </asp:Label>
        </asp:TableCell>

        <asp:TableCell>
             <asp:TextBox ID="TextBox4" runat="server" Text="chart with live data and averages" Style="background-color: aqua; width: 300px; height: 50px"> </asp:TextBox>
        </asp:TableCell>

 </asp:TableRow>

          <asp:TableRow>
                  <asp:TableCell>
                       <asp:Label ID="label3" runat="server" Text="UV Radiation"  Style="font-size: 20px; font-family: Arial, Helvetica, sans-serif"> </asp:Label>
                   </asp:TableCell>

                   <asp:TableCell>
                        <asp:TextBox ID="TextBox2" runat="server" Text="chart with live data and averages" Style="background-color: aqua; width: 300px; height: 50px"> </asp:TextBox>
                   </asp:TableCell>


              </asp:TableRow>

            <asp:TableRow>
                   <asp:TableCell>
                       <asp:Label ID="label4" runat="server" Text="Air quality"  Style="font-size: 20px; font-family: Arial, Helvetica, sans-serif"> </asp:Label>
                    </asp:TableCell>

                    <asp:TableCell>
                             <asp:TextBox ID="TextBox5" runat="server" Text="chart with live data and averages" Style="background-color: aqua; width: 300px; height: 50px"> </asp:TextBox>
                                  
                   </asp:TableCell>

             </asp:TableRow>

             <asp:TableRow>
                  <asp:TableCell Style="text-align:right" >

                       <asp:Label ID="label7" runat="server" Text="Production Dashboard" Style="font-size: 40px; font-family: Arial, Helvetica, sans-serif"> </asp:Label>
                    </asp:TableCell>

               </asp:TableRow>

    <asp:TableRow>

          <asp:TableCell>
               <asp:Label ID="label8" runat="server" Text="Energy" Style="font-size: 20px; font-family: Arial, Helvetica, sans-serif"> </asp:Label>
           </asp:TableCell>

           <asp:TableCell>
                <asp:RadioButton ID="RadioButton4" runat="server" Text="Solar" />
                <asp:RadioButton ID="RadioButton5" runat="server" Text="Bateries" />
           </asp:TableCell>

    </asp:TableRow>

  <asp:TableRow>
         <asp:TableCell>
              <asp:Label ID="label9" runat="server" Text="Nutrient Delivery" Style="font-size: 20px; font-family: Arial, Helvetica, sans-serif"> </asp:Label>
          </asp:TableCell>

 <asp:TableCell>
      <asp:TextBox ID="TextBox7" runat="server" Style="background-color: aqua; width: 300px; height: 50px"> </asp:TextBox>
 </asp:TableCell>
 </asp:TableRow>

         <asp:TableRow>
        <asp:TableCell>
             <asp:Label ID="label10" runat="server" Text="Crops" Style="font-size: 20px; font-family: Arial, Helvetica, sans-serif"> </asp:Label>
         </asp:TableCell>

<asp:TableCell>
    
    
    <asp:RadioButton ID="RadioButton2" runat="server" Text="Cereals" />
    <asp:RadioButton ID="RadioButton1" runat="server" Text="Veggies" />
    <asp:RadioButton ID="RadioButton3" runat="server" Text="Fruits" />
    
</asp:TableCell>
</asp:TableRow >

 </asp:Table>

    </center-->
    
        

         </body>
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
</!--html>
