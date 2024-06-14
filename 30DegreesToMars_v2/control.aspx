<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="control.aspx.cs" Inherits="_30DegreesToMars_v2.control" %>

<!-- #include file="navbar.html" -->

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Control Panel</title>
    <!-- Theme style -->
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
            <div class="col-lg-2 col-1">
                <!-- small box -->
                <div class="small-box bg-info">
                    <div class="inner">
                        <h4>Strawberry</h4>
                           <img alt="tomato" src="img\strawberry.png" height="60" width="60">
                    </div>
                       <a href="#" class="small-box-footer">Apply <asp:CheckBox ID="CheckBox1" runat="server" /></a>
                </div>
            </div>
            <!-- ./col -->

   <!-- Small boxes (Mushroom) -->
       <div class="col-lg-2 col-2">
           <!-- small box -->
           <div class="small-box bg-info">
               <div class="inner">
                   <h4>Mushroom</h4>
                   <img alt="tomato" src="img\mushroom.png" height="60" width="60">
               </div>
               <a href="#" class="small-box-footer">Apply <asp:CheckBox ID="CheckBox2" runat="server" /></a>
           </div>
       </div>

       <!-- Small boxes (Tomato) -->
       <div class="col-lg-2 col-3">
           <!-- small box -->
           <div class="small-box bg-info">
               <div class="inner">
                   <h4>Tomato</h4>
                   <img alt="tomato" src="img\tomato.jpg" height="60" width="60">
               </div>
               <a href="#" class="small-box-footer">Apply <asp:CheckBox ID="CheckBox3" runat="server" /></a>
           </div>
       </div>

       <!-- Small boxes (Watermelon) -->
       <div class="col-lg-2 col-4">
           <!-- small box -->
           <div class="small-box bg-info">
               <div class="inner">
                   <h4>Watermelon</h4>
                   <img alt="watermelon" src="img\watermelon.jpeg" height="60" width="60">
               </div>
               <a href="#" class="small-box-footer">Apply <asp:CheckBox ID="CheckBox4" runat="server" /></a>
           </div>
       </div>

       <!-- Small boxes (Wheat) -->
       <div class="col-lg-2 col-5">
           <!-- small box -->
           <div class="small-box bg-info">
               <div class="inner">
                   <h4>Wheat</h4>
                   <img alt="wheat" src="img\wheat.png" height="60" width="60">
               </div>
               <a href="#" class="small-box-footer">Apply <asp:CheckBox ID="CheckBox5" runat="server" /></a>
           </div>
       </div>
   </div>
            <div class="row">
                 <div class="col-lg-3 col-6">
                   <asp:Button ID="Button1" runat="server" Text="Apply" />
                  </div>
                 <div class="col-lg-2 col-3">
                   <asp:Button ID="Button2" runat="server" Text="Apply to All" />
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
