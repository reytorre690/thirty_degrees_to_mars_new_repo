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
        <a>Temperature: <input id="temp" type="text" placeholder="5"/> Degrees</a>
        <input id="Button1" type="button" value="Save" />      
       </div>
         <div class="row">
        <a>Humidity: <input id="humidity" type="text" placeholder="25"/> Pascal</a>
        <input id="Button2" type="button" value="Save" />      
       </div>
         <div class="row">
        <a>Power: <input id="Text1" type="text" placeholder="8"/> Kilowattl</a>     
        <input id="Button3" type="button" value="Save" />      
       </div>
       </div>
    </form>
</body>
</html>
