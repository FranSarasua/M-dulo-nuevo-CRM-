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
<style type="text/css">
#tf-menu {
	background-color: black;
}

.overlay {
	background-color: black;
}
</style>
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
			</di
					v>
			<!-- /.container-fluid -->
	</nav>

	<!-- Barra Navegación
    ==========================================-->
	<div id="tf-menu" class="text-center">
		<div class="overlay"></div>
	</div>

	<!-- Página Inicio
    ==========================================-->
	<div>
		<div class="container">
			<div class="row">
				<section>
					<h2>Ejercicios Queries.</h2>
					<br />
					<h3>Primera Query:</h3>
					<br />
					<p>
						Esta <strong>Query</strong> es la primera que nosotros hacemos en
						la página Web.
					</p>
					<p>
						<strong> Listado del curso y el número de alumnos de cada
							uno ordenado de manera descendente.</strong> .
					</p>
					<%
						String query = "select grupos.idGrupo, count(idAlumno) from alumnos join grupos on (alumnos.idGrupo=grupos.idGrupo) group by grupos.idGrupo order by count(idAlumno) DESC";
						beanDB basededatos = new beanDB();
						String[][] tablares = basededatos.resConsultaSelectA3(query);
					%>
					<table class="table">
						<%
							for (int i = 0; i < tablares.length; i++) {
						%>
						<tr>
							<%
								for (int j = 0; j < tablares[i].length; j++) {
							%>
							<td><%=tablares[i][j]%></td>
							<%
								}
							%>
						</tr>
						<%
							}
						%>
					</table>
				</section>

			</div>
		</div>
	</div>
	<br />
	<br />

	<!-- Primera Query
    ==========================================-->

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