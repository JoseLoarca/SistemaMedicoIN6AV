<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="org.sistemamedico.bean.Usuario" %>
<%
	HttpSession miSesion = request.getSession();
	Object usr = miSesion.getAttribute("usuario");
	Usuario usuario = (Usuario) usr;
%> 
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>CME - Farmacia</title>
    
    <link rel="shortcut icon" href="https://maxcdn.icons8.com/Color/PNG/24/Healthcare/caduceus-24.png">
    
    <link href="../assets/startbootstrap/css/custom.css" rel="stylesheet" />

    <!-- Bootstrap Core CSS -->
    <link href="../assets/startbootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../assets/startbootstrap/css/modern-business.css" rel="stylesheet">
    <link href="../assets/dist/css/skins/custom.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../assets/startbootstrap/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a href="/SistemaMedicoIN6AV/sistemamedico/dashboard.jsp" class="navbar-brand" href="index.html"><b>C</b>entro<b> M</b>édico<b> E</b>speranza</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="/SistemaMedicoIN6AV/sistemamedico/citas.jsp">Citas</a>
                    </li>
                    <li>
                        <a href="/SistemaMedicoIN6AV/sistemamedico/farmacia.jsp">Medicamentos</a>
                    </li>
                    <li>
                        <a href="/SistemaMedicoIN6AV/sistemamedico/noticias.jsp">Noticias</a>
                    </li>
                    <li>
                        <a href="/SistemaMedicoIN6AV/sistemamedico/contactenos.jsp">Contáctenos</a>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Usuario<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="/SistemaMedicoIN6AV/CerrarSesion.do">Cerrar Sesión</a>
                            </li>
  
                        </ul>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Page Content -->
    <div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Medicamentos
                    <small>De todo para tu salud</small>
                </h1>
            </div>
        </div>
        <!-- /.row -->


        <!-- Projects Row -->
		<div class="row">
            <div class="col-xs-12">
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title"></h3>
                  <div class="box-tools">
                    <div class="input-group" style="width: 150px;">
                      <div class="input-group-btn">
                      </div>
                    </div>
                  </div>
                </div><!-- /.box-header -->
                <div class="box-body table-responsive no-padding">
                 <table class="table table-hover">
                  <thead>
                    <tr>
                      <th>Nombre</th>
                      <th>Descripcion</th>
                      <th>Proveedor</th>
                      <th>Fecha Vencimiento</th>
                      <th>Precio</th>
                    </tr>
                   </thead>
                   <tbody>
                   	  <c:forEach items="${listaMedicamento}" var="medicamento">
                    	<tr>
                      		<td>${medicamento.nombre}</td>
                      		<td>${medicamento.descripcion}</td>
                      		<td>${medicamento.idProveedor.getNombre()}</td>
                      		<td>${medicamento.fechaVencimiento}</td>
                      		<td>${medicamento.precio}</td>
                    	</tr>
                     </c:forEach>
                    </tbody>
                  </table>
                  
                </div><!-- /.box-body -->
                <form action="agregarMed.jsp">
                	<input type="submit" value="Agregar" class="btn btn-default" >
               	</form>
              </div><!-- /.box -->
            </div>
          </div>
        <!-- /.row -->

        <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Todos los derechos reservados &copy; Kinal IN6AV 2016</p>
                </div>
            </div>
        </footer>

    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="../assets/startbootstrap/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../assets/startbootstrap/js/bootstrap.min.js"></script>

</body>
</html>