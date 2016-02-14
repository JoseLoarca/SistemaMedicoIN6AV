<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%Object usr=request.getSession().getAttribute("usuario");
	if(usr!=null){
		//response.sendRedirect("/SistemaMedicoIN6AV/sistemamedico/dashboard.jsp");
	}else{
		%>	
		<jsp:forward page="/sistemamedico/error.jsp">
			<jsp:param name="error" value="Para acceder al sistema, inicie sesión." />
		</jsp:forward>		
		<%
	}
%>
<html>
	<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>CME - Noticias</title>
    
    <link rel="shortcut icon" href="https://maxcdn.icons8.com/Color/PNG/24/Healthcare/caduceus-24.png">
    
     <link href="../assets/startbootstrap/css/custom.css" rel="stylesheet" />

    <!-- Bootstrap Core CSS -->
    <link href="../assets/startbootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../assets/startbootstrap/css/modern-business.css" rel="stylesheet">

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
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand"><b>C</b>entro<b> M</b>édico<b> E</b>speranza</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="/SistemaMedicoIN6AV/sistemamedico/citas.jsp">Citas</a>
                    </li>
                    <li>
                        <a >Medicamentos</a>
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

        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Noticias</h1>
            </div>
        </div>
 
        <!-- /.row -->

        <!-- Blog Post Row -->
        <div class="row">
            <div class="col-md-1 text-center">
                <p><i class="fa fa-exclamation-triangle fa-4x"></i>
                </p>
                <p>13 febrero, 2016</p>
            </div>
            <div class="col-md-5">
                <a href="blog-post.html">
                    <img class="img-responsive img-hover" src="http://ichef.bbci.co.uk/news/ws/660/amz/worldservice/live/assets/images/2015/06/11/150611122654_zika_624x351_thinkstock.jpg" alt="">
                </a>
            </div>
            <div class="col-md-6">
                <h3>
                    <a href="blog-post.html">Confirmados 105 casos de zika en Guatemala</a>
                </h3>
                <p>por <a>Admin</a>
                </p>
                <p>Al menos 105 contagiados del virus zika, que podría causar malformaciones cerebrales a bebés, fueron confirmados en Guatemala, indicó la epidemióloga del Ministerio de Salud, Judith García, en declaraciones a la prensa. </p>
                <a class="btn btn-primary" href="blog-post.html">Ver artículo <i class="fa fa-caret-right"></i></a>
            </div>
        </div>
        <!-- /.row -->

        <hr>


        <!-- Blog Post Row -->
        <div class="row">
            <div class="col-md-1 text-center">
                <p><i class="fa fa-4x fa-birthday-cake"></i>
                </p>
                <p>11 febrero, 2016</p>
            </div>
            <div class="col-md-5">
                <a href="blog-post.html">
                    <img class="img-responsive img-hover" src="../assets/startbootstrap/img/CME.jpg" alt="">
                </a>
            </div>
            <div class="col-md-6">
                <h3><a href="blog-post.html">Lanzamiento sitio oficial <b>CME</b></a>
                </h3>
                <p>por <a>Admin</a>
                </p>
                <p>Estamos muy emocionados de informarles que con motivo del primer aniversario del <b>CME</b>, estaremos estrenando el nuevo sitio web, donde usted podrá programar citas, comprar medicamentos, leer noticias relevantes, etc.</p>
                <a class="btn btn-primary" href="blog-post.html">Ver artículo <i class="fa fa-caret-right"></i></a>
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