<%@ Page Language="C#" AutoEventWireup="true" CodeFile="control.aspx.cs" Inherits="_30DegreesToMars_v2.control" %>

<!-- #include file="navbar.html" -->

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Control Panel</title>
    <!-- Theme style -->
        <!-- BOOTSTRAP STYLES-->
    <%--<link href="css/bootstrap.css" rel="stylesheet" />--%>
    <!-- FONTAWESOME STYLES-->
    <link href="css/font-awesome.css" rel="stylesheet" />
    <!-- CUSTOM STYLES-->
    <link href="css/custom.css" rel="stylesheet" />
    <!-- GOOGLE FONTS-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>
<body>
    <form id="form1" runat="server">
  <%--<script>window.location.href = './src_code.html'</script>--%>
       <div class="content-wrapper">
              <!-- Content Header (Page header) -->
      <div class="content-header">
          <div class="container-fluid">
              <div class="row mb-2">
                  <div class="col-sm-6">
                      <h1 class="m-0">Control</h1>
                  </div><!-- /.col -->
                  <div class="col-sm-6">
                      <ol class="breadcrumb float-sm-right">
                          <li class="breadcrumb-item"><a href="#">Home</a></li>
                          <li class="breadcrumb-item active">Control Pannel</li>
                      </ol>
                  </div><!-- /.col -->
              </div><!-- /.row -->
          </div><!-- /.container-fluid -->
      </div>
      <!-- /.content-header -->
        
           <!-- Main content -->
<section class="content">
    <div class="container-fluid">
        <!-- Small boxes (Stat box) -->
        <div class="row">
            <div class="col-md-2 col-sm-4 col-xs-4">
                        <div class="panel panel-primary text-center no-boder bg-color-blue">
                            <div class="panel-body">
                                <img alt="tomato" src="img\strawberry.png" height="60" width="60">
                                <h3> Strawberry </h3>
                            </div>
                            <div class="panel-footer back-footer-blue">
                                Monitored

                            </div>
                        </div>
                    </div>
            <div class="col-md-2 col-sm-4 col-xs-4">
                        <div class="panel panel-primary text-center no-boder bg-color-blue">
                            <div class="panel-body">
                                <img alt="mushroom" src="img\mushroom.png" height="60" width="60">
                                <h3> Mushroom </h3>
                            </div>
                            <div class="panel-footer back-footer-blue">
                                Monitored
                            </div>
                        </div>
                    </div>

           <div class="col-md-2 col-sm-4 col-xs-4">
                        <div class="panel panel-primary text-center no-boder bg-color-blue">
                            <div class="panel-body">
                                <img alt="tomato" src="img\tomato.jpg" height="60" width="60">
                                <h3> Tomato </h3>
                            </div>
                            <div class="panel-footer back-footer-blue">
                                Monitored
                            </div>
                        </div>
                    </div>

               <div class="col-md-2 col-sm-4 col-xs-4">
                        <div class="panel panel-primary text-center no-boder bg-color-blue">
                            <div class="panel-body">
                                <img alt="watermelon" src="img\watermelon.jpeg" height="60" width="60">
                                <h3> Watermelon </h3>
                            </div>
                            <div class="panel-footer back-footer-blue">
                                Monitored
                            </div>
                        </div>
               </div>

                <div class="col-md-2 col-sm-4 col-xs-4">
                        <div class="panel panel-primary text-center no-boder bg-color-blue">
                            <div class="panel-body">
                                <img alt="wheat" src="img\wheat.png" height="60" width="60">
                                <h3> Wheat </h3>
                            </div>
                            <div class="panel-footer back-footer-blue">
                                Monitored
                            </div>
                        </div>
               </div>

   </div>
      <div class="row">
                <div class="col-md-6">
                 <h3>Overall Health</h3>
                  <div class="progress progress-striped">
                   <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                   <span class="sr-only">40% Complete (success)</span>
                     </div>
                    </div>
        </div>


        </div>
        <div class="row">
        <asp:DropDownList ID="param" runat="server" onchange="VChanged()">
            <asp:ListItem Enabled="true" Text="Select Control Parameter" Value="-1"></asp:ListItem>
            <asp:ListItem Text="Temperature" Value="temperature"></asp:ListItem>
            <asp:ListItem Text="Power" Value="power"></asp:ListItem>
            <asp:ListItem Text="Humidity" Value="humidity"></asp:ListItem>
        </asp:DropDownList>
            

            <asp:TextBox ID="inputvariable" runat="server" type="text" class="input"></asp:TextBox>
            <asp:Label ID="unitlabel" runat="server" Text="Unit"></asp:Label>
            <asp:Button ID="Button2" runat="server" Text="Save"  Onclick="Insert_new_params"/>
       </div>
       </div>
    </form>
</body>
    <script>
        function VChanged() 
        {
           var control = document.getElementById('<%= param.ClientID %>');
           var selectedvalue = control.options[control.selectedIndex].value;

            if (selectedvalue == "temperature") {
                document.getElementById('<%=unitlabel.ClientID%>').innerHTML = 'Celcius';
            }
            else if (selectedvalue == "power") {
                document.getElementById('<%=unitlabel.ClientID%>').innerHTML = 'Kilo Volts';
            }
            else if (selectedvalue == "humidity") {
                document.getElementById('<%=unitlabel.ClientID%>').innerHTML = 'g/m3';
            }
            else {
                document.getElementById('<%=unitlabel.ClientID%>').innerHTML = 'Unit';
            }
        }
    </script>
</html>
