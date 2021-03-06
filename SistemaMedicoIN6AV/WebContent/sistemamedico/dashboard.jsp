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

    <title>CME - Bienvenido</title>
    
    <link rel="shortcut icon" href="https://maxcdn.icons8.com/Color/PNG/24/Healthcare/caduceus-24.png">
    
    <link href="../assets/startbootstrap/css/custom.css" rel="stylesheet" />

    <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href="../assets/startbootstrap/css/bootstrap.min.css">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="../assets/startbootstrap/css/modern-business.css">

    <!-- Custom Fonts -->
    <link rel="stylesheet" href="../assets/startbootstrap/font-awesome/css/font-awesome.min.css" type="text/css">

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
                <a href="/SistemaMedicoIN6AV/sistemamedico/dashboard.jsp" class="navbar-brand"><b>C</b>entro<b> M</b>édico<b> E</b>speranza</a>
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

    <!-- Header Carousel -->
    <header id="myCarousel" class="carousel slide">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="item active">
                <div class="fill" style="background-image:url('http://www.dyvservicios.com/img_sub/fimportante.jpg');"></div>
                <div class="carousel-caption">
                    <h4>Los mejores médicos del país a tu servicio.</h4>
                </div>
            </div>
            <div class="item">
                <div class="fill" style="background-image:url('http://medicina.udd.cl/clinica-santiago/files/2013/01/IMG_5191.jpg');"></div>
                <div class="carousel-caption">
                    <h4>Las instalaciones más modernas de la región.</h4>
                </div>
            </div>
            <div class="item">
                <div class="fill" style="background-image:url('http://www.ufjf.br/secom/files/2009/03/dsc_2612.jpg');"></div>
                <div class="carousel-caption">
                    <h4>La tecnología más avanzada, al alcance de tus manos.</h4>
                </div>
            </div>
        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="icon-prev"></span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="icon-next"></span>
        </a>
    </header>

    <!-- Page Content -->
    <div class="container">

        <!-- Marketing Icons Section -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">
                    Bienvenido al Centro Médico Esperanza
                </h1>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-heartbeat"></i> Tu salud en nuestras manos</h4>
                    </div>
                    <div class="panel-body">
                        <p>En el Centro Médico Esperanza sabemos lo importante que es tu salud, por eso te ofrecemos atención personalizada 24/7.</p>
                        <a href="/SistemaMedicoIN6AV/sistemamedico/citas.jsp" class="btn btn-default">Haz una cita</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-shopping-bag"></i> Farmacia</h4>
                    </div>
                    <div class="panel-body">
                        <p>También contamos con nuestra propia farmacia, por lo que siempre encontrarás el medicamento que necesites al mejor precio.</p>
                        <a href="/SistemaMedicoIN6AV/sistemamedico/farmacia.jsp" class="btn btn-default">Comprar</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-newspaper-o"></i> Noticias</h4>
                    </div>
                    <div class="panel-body">
                        <p>En nuestra sección de noticias podrás estar al tanto de los últimos acontecimientos en el mundo de la medicina.</p>
                        <a href="/SistemaMedicoIN6AV/sistemamedico/noticias.jsp" class="btn btn-default">Ver más</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- /.row -->



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

    <!-- Script para activar el carousel -->
    <script>
    $('.carousel').carousel({
        interval: 5000 //cambia velocidad del carousel
    })
    </script>

</body>

</html>