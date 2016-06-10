<!DOCTYPE html>
<html lang="en">

<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="mipk.beanDB"%>
<!-- Basic Page Needs
    ================================================== -->
<meta charset="utf-8">
<!--[if IE]><meta http-equiv="x-ua-compatible" content="IE=9" /><![endif]-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Página Almacenamiento de Queries</title>
<meta name="description"
	content="Spirit8 is a Digital agency one page template built based on bootstrap framework. This template is design by Robert Berki and coded by Jenn Pereira. It is simple, mobile responsive, perfect for portfolio and agency websites. Get this for free exclusively at ThemeForces.com">
<meta name="keywords"
	content="bootstrap theme, portfolio template, digital agency, onepage, mobile responsive, spirit8, free website, free theme, themeforces themes, themeforces wordpress themes, themeforces bootstrap theme">
<meta name="author" content="ThemeForces.com">

<!-- Favicons
    ================================================== -->
<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
<link rel="apple-touch-icon" href="img/apple-touch-icon.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="img/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="img/apple-touch-icon-114x114.png">

<!-- Bootstrap -->
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="fonts/font-awesome/css/font-awesome.css">

<!-- Slider
    ================================================== -->
<link href="css/owl.carousel.css" rel="stylesheet" media="screen">
<link href="css/owl.theme.css" rel="stylesheet" media="screen">

<!-- Stylesheet
    ================================================== -->
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/responsive.css">

<link
	href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,700,300,600,800,400'
	rel='stylesheet' type='text/css'>

<script type="text/javascript" src="js/modernizr.custom.js"></script>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<!-- Cabecera
    ==========================================-->
	<nav id="tf-menu" class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.jsp">BBDD</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="index.jsp" class="page-scroll">Inicio</a></li>
					<li><a href="primeraquery.jsp" class="page-scroll">Número
							alumnos</a>
					<li>
					<li><select title="Primera Tanda"
						onchange="location = this.value;">
							<option value="Primera Tanda">Primera Tanda</option>
							<option value="query2.jsp">Núm clases</option>
							<option value="query3.jsp">Profesores</option>
							<option value="query4.jsp">Núm Asignaturas</option>
							<option value="query5.jsp">Núm profesores</option>
							<option value="query6.jsp">Profesor horas semana</option>
					</select></li>
					<li><select title="Segunda Tanda"
						onchange="location = this.value;">
							<option value="Segunda Tanda">Segunda Tanda</option>
							<option value="query7.jsp">Incidencias meses 1</option>
							<option value="query8.jsp">Incidencias meses 2</option>
					</select></li>
					<li><select title="Tercera Tanda"
						onchange="location = this.value;">
							<option value="Tercera Tanda">Modulos</option>
							<option value="insert.jsp">Insertar datos</option>
					</select></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>
	<script type="text/javascript">
		function mostrar1() {
			document.getElementById('tienePadre').style.display = 'block';
			if (document.getElementById('noTienePadre').style.display == 'block')
				document.getElementById('noTienePadre').style.display = 'none';
		}
		function mostrar2() {
			document.getElementById('noTienePadre').style.display = 'block';
			if (document.getElementById('tienePadre').style.display == 'block')
				document.getElementById('tienePadre').style.display = 'none';
		}
	</script>
	<!-- Barra Navegación
    ==========================================-->
	<div id="tf-tan31">
		<div class="insert">
			<h2>DML con la tabla Módulos</h2>
			<br />
			<h3>Insertar datos en la tabla</h3>
			<br />
			<p>
				Empezamos la primera fase de insertar datos con la <strong>
					Nueva tanda </strong>. <br /> Introduzca los datos requeridos a
				continuación:
			</p>
			<%
				String boton = request.getParameter("boton");
				int fichaInsertada = 0;
				String padre = request.getParameter("padre");
				String modulo = request.getParameter("modulo");
				String Alias = request.getParameter("Alias");
				String idGrupo = request.getParameter("grupo");
				String nombre = request.getParameter("nombre");
				String idProfesor = request.getParameter("profesor");
				String parent = "1";
				if (Alias != null && idGrupo != null && nombre != null && idProfesor != null && fichaInsertada == 0) {
					String query = "insert into modulos(Alias,idGrupo,nombre,Profesores_idProfesor,parent) values('" + Alias
							+ "','" + idGrupo + "','" + nombre + "','" + idProfesor + "','" + parent + "')";
					beanDB basededatos = new beanDB();
					basededatos.insert(query);
					fichaInsertada++;
				}
				if (boton==null && padre != null && modulo != null) {
					String query5 = "UPDATE modulos SET parent = '" + padre + "' WHERE idModulo='" + modulo + "'";
					beanDB basededatos5 = new beanDB();
					basededatos5.update(query5);
				}
				if (boton != null && boton.equalsIgnoreCase("on") && modulo != null) {
					String query6 = "UPDATE modulos SET parent = '" + modulo + "' WHERE idModulo='" + modulo + "'";
					beanDB basededatos6 = new beanDB();
					basededatos6.update(query6);
				}

				if (fichaInsertada == 0) {
			%><div id="div1">
				<form class="formulario" name="" method="post" action="insert.jsp">
					<label for="Alias">Alias:</label> <input type="text" name="Alias" /><br />
					<label for="nombre">Nombre: </label> <input type="text"
						name="nombre" /><br /> <select id="opciones" name="grupo">
						<%
							String query2 = "SELECT g.idGrupo FROM grupos g;";
								beanDB basededatos2 = new beanDB();
								String[][] tablares2 = basededatos2.resConsultaSelectA3(query2);
						%>
						<option value="">Elija un Grupo...</option>
						<%
							for (int i = 0; i < tablares2.length; i++) {
						%><OPTION value="<%=tablares2[i][0]%>">
							<%=tablares2[i][0]%>
						</OPTION>
						<%
							}
						%>
					</select> <select id="opciones" name="profesor">
						<%
							String query1 = "SELECT p.nombre, p.apellidos, p.idProfesor FROM profesores p;";
								beanDB basededatos1 = new beanDB();
								String[][] tablares1 = basededatos1.resConsultaSelectA3(query1);
						%>
						<option value="">Elija un Profesor...</option>
						<%
							for (int i = 0; i < tablares1.length; i++) {
						%><OPTION value="<%=tablares1[i][2]%>">
							<%=tablares1[i][0] + " " + tablares1[i][1]%>
						</OPTION>
						<%
							}
						%>
					</select> <br /> <br /> <input type="submit" value="Guardar"
						onclick="ocultarDiv()" /> <br />
				</form>
			</div>
			<%
				}
				if (fichaInsertada == 1) {
			%>
			<form class=formulario name="" method="post" action="insert.jsp">
				<label for="">¿Tiene módulo padre?</label> <input type="button"
					value="Si" onclick="mostrar1()"> <input type="button"
					value="No" onclick="mostrar2()">
					
				<%
						String query5 = "SELECT Alias, idModulo FROM modulos m where m.Alias='" + Alias + "' AND idGrupo='"
									+ idGrupo + "' AND nombre='" + nombre + "' AND Profesores_idProfesor='" + idProfesor + "';";
							beanDB basededatos5 = new beanDB();
							String[][] tablares5 = basededatos5.resConsultaSelectA3(query5);
						for (int i = 0; i < tablares5.length; i++) {
					%>
				<input type="hidden" name="modulo" value="<%=tablares5[i][1]%>" />
				<%
						}
					%>
				<div id="tienePadre" style='display: none;'>
					<br /> <select id="opciones" name="padre">
						<%
							String query3 = "SELECT m.Alias, m.idModulo FROM modulos m;";
								beanDB basededatos3 = new beanDB();
								String[][] tablares3 = basededatos3.resConsultaSelectA3(query3);
						%>
						<option value="">Elija el módulo Padre...</option>
						<%
							for (int i = 0; i < tablares3.length; i++) {
						%><OPTION value="<%=tablares3[i][1]%>">
							<%=tablares3[i][0]%>
						</OPTION>
						<%
							}
						%>
					</select>					

					<%
						
					%>
					<input type="submit" value="Guardar" />
				</div>
				<%
					
				%>
				<div id="noTienePadre" style='display: none;'>
					<br />
					
					<p>Este Módulo pasará a no tener módulo padre.</p>
					<input type="checkbox" name="boton" /> <input type="submit"
						value="Guardar" />
				</div>
				<br />
			</form>
			<%
				}
			%>
		</div>
	</div>

	<!-- Insert
    ==========================================-->
	<br />-
	<nav id="footer">
		<div class="container">
			<div class="pull-left fnav">
				<p>
					ALL RIGHTS RESERVED. COPYRIGHT © 2014. Designed by <a href="">Fran
						Sarasúa</a>
				</p>
			</div>
			<div class="pull-right fnav">
				<ul class="footer-social">
					<li><a href="#"><i class="fa fa-facebook"></i></a></li>
					<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
					<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
					<li><a href="#"><i class="fa fa-twitter"></i></a></li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery.1.11.1.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/SmoothScroll.js"></script>
	<script type="text/javascript" src="js/jquery.isotope.js"></script>

	<script src="js/owl.carousel.js"></script>

	<!-- Javascripts
    ================================================== -->
	<script type="text/javascript" src="js/main.js"></script>

</body>
</html>