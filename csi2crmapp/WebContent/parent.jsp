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
				String parent = request.getParameter("padre");
				String modulo = request.getParameter("modulo");
				if (parent != null) {
					String query2 = "UPDATE modulos SET parent = '" + parent + "' WHERE idModulo=='" + modulo + "'";
					beanDB basededatos2 = new beanDB();
					basededatos2.insert(query2);
				}
			%>
			<form class=formulario name="" method="post" action="insert.jsp">
				<label for="padre">¿Tiene módulo padre?</label> <input type="button"
					value="Si" onclick="mostrar1()"> <input type="button"
					value="No" onclick="mostrar2()">
				<div id="tienePadre" style='display: none;'>
					<br /> <select id="opciones" name="padre">
						<%
							String query = "SELECT m.Alias, m.idModulo FROM modulos m;";
							beanDB basededatos = new beanDB();
							String[][] tablares = basededatos.resConsultaSelectA3(query);
						%>
						<option value="">Elija el módulo Padre...</option>
						<%
							for (int i = 0; i < tablares.length; i++) {
						%><OPTION value="<%=tablares[i][1]%>">
							<%=tablares[i][0]%>
						</OPTION>
						<%
							}
						%>
					</select> <select id="opciones" name="modulo">
						<%
							String query3 = "SELECT m.idModulo, m.Alias FROM modulos m;";
							beanDB basededatos3 = new beanDB();
							String[][] tablares3 = basededatos3.resConsultaSelectA3(query3);
						%>
						<option value="">Elija el módulo a cambiar...</option>
						<%
							for (int i = 0; i < tablares.length; i++) {
						%><OPTION value="<%=tablares3[i][0]%>">
							<%=tablares3[i][1]%>
						</OPTION>
						<%
							}
						%>
					</select>

				</div>
				<div id="noTienePadre" style='display: none;'>
					<br />
					<%
						
					%>
				</div>
				<br />
			</form>

		</div>
	</div>

	<!-- Parent
    ==========================================-->
	<form method="post">
		<input type="button" value="Actualizar Página" onclick="insert.jsp" />
	</form>
	<br />
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