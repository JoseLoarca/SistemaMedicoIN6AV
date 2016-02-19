<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>CME - Informe de Citas</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet" href="../assets/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="../assets/dist/css/AdminLTE.min.css">
    
    <link rel="shortcut icon" href="https://maxcdn.icons8.com/Color/PNG/24/Healthcare/caduceus-24.png">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body onload="window.print();" >
    <div class="wrapper">
      <!-- Main content -->
      <section class="invoice">
        <!-- title row -->
        <div class="row">
          <div class="col-xs-12">
            <h2 class="page-header">
              <i class="fa fa-medkit"></i> <strong>C</strong>entro <strong>M</strong>édico <strong>E</strong>speranza
              <small class="pull-right">Febrero de 2016</small>
            </h2>
          </div><!-- /.col -->
        </div>
        <!-- info row -->
        <div class="row invoice-info">
          <div class="col-sm-4 invoice-col">
            Visitenos
            <address>
              <strong>Centro Médico Esperanza</strong><br>
              6 av. 13-54, Zona 7 Colonia Landívar<br>
              Ciudad de Guatemala, Guatemala<br>
              01-800-ESPERANZA<br>
              centromedico@esperanza.com
            </address>
          </div><!-- /.col -->
         
        </div><!-- /.row -->

        <!-- Table row -->
        <div class="row">
          <div class="col-xs-12 table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>Cliente</th>
                  <th>Fecha</th>
                  <th>Hora</th>
                  <th>Síntoma</th>
                </tr>
              </thead>
              <tbody>
       				<c:forEach items="${listaCita}" var="cita">
            			<tr>
                  			<td>${cita.getIdUsuario().getNombre()}</td>
           		  			<td>${cita.getFecha()}</td>
           	      			<td>${cita.getHora()}</td>
                  			<td>${cita.getSintoma()}</td>
            			</tr>
        			</c:forEach>
        		</tbody>
            </table>
          </div><!-- /.col -->
        </div><!-- /.row -->

        <div class="row">
          <!-- accepted payments column -->

        </div><!-- /.row -->
      </section><!-- /.content -->
    </div><!-- ./wrapper -->

    <!-- AdminLTE App -->
    <script src="../assets/dist/js/app.min.js"></script>
  </body>
</html>