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

    <title>CME - Citas</title>
    
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
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Citas<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="/SistemaMedicoIN6AV/sistemamedico/listarCitas.jsp">Ver Citas</a>
                            </li>
  							<li>
  								<a href="/SistemaMedicoIN6AV/sistemamedico/imprimirCitas.jsp">Imprimir Reporte</a>
  							</li>
                        </ul>
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
                <h1 class="page-header">Citas
                    <small>Programa una cita</small>
                </h1>
            </div>
        </div>
        <!-- /.row -->
        <!-- Content Row -->
        <div class="row">
            <div class="col-lg-12">
                <h4>Ingrese los datos requeridos para programar una cita.</h4>
            </div>
        </div>
        <div class="alert alert-success  fade in" id="alerta">
	    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
	    <strong>Éxito!</strong> Su cita ha sido programada.
	  	</div>
        <div class="box box-info">
        <form id="citaForm">
               <h5>Fecha:</h5>  
               <input type="text" name="txtFecha" id="txtFecha" required placeholder="dd/mm/yyyy">
               <br>
               <h5>Hora:</h5>
               <input type="time" name="txtHora" required min="07:00:00" max="23:00:00" id="txtHora" required> 
               <br>
               <h5>Síntomas:</h5>
               <textarea rows="10" cols="50" name="txtSintoma" placeholder="Por favor describa como se siente." id="txtSintoma"></textarea> 
               <br>
               <input type="button" id="enviarInfo" class="btn btn-default" value="Programar" >
        </form>
		</div>
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
     <script src="../assets/jquery/jquery.maskedinput.min.js" type="text/javascript"></script>
    
    <!-- Bootstrap Core JavaScript -->
    <script src="../assets/startbootstrap/js/bootstrap.min.js"></script>
       
    <script>
    $(document).on('ready',function(){
    	$("#txtFecha").mask("99/99/9999");
    	$("#alerta").hide();
    	$("#enviarInfo").on('click',function(){
    		var _txtFecha = $("#txtFecha").val();
    		var _txtHora = $("#txtHora").val();
    		var _txtSintoma = $("#txtSintoma").val();
    		
    		document.getElementById("citaForm").reset();
    		
    		$.post("../AgregarCita.do",{
    			txtFecha: _txtFecha, txtHora: _txtHora, txtSintoma: _txtSintoma
    		}, function(response){
	    			console.log("hola");
	    			$("#alerta").show(1000);
    			});
    		});
    	});
    </script>    

</body>

</html>