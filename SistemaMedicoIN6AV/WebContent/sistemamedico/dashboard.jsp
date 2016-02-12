<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	Object usr=request.getSession().getAttribute("usuario");
	if(usr!=null){
		//response.sendRedirect("/SistemaMedicoIN6AV/sistemamedico/dashboard.jsp");
	}else{
		%>	
		<jsp:forward page="/index.jsp">
			<jsp:param name="error" value="Para acceder al sistema, inicie sesión." />
		</jsp:forward>		
		<%
	}
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CME - Bienvenido</title>
</head>
<body>

	Bienvenido ${usuario.getNombre()}.
	<a href="CerrarSesion.do">Cerrar Sesión</a>
	
</body>
</html>