<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="mipk.beanDB"%>
</head>
<body>
	<%
		String query3 = "SELECT p.nombre Nombre, p.apellidos Apellido, COUNT(idModulo) Modulos FROM profesores p LEFT JOIN modulos m ON (p.idProfesor = m.Profesores_idProfesor) GROUP BY idProfesor;";
		beanDB basededatos3 = new beanDB();
		String[][] tablares3 = basededatos3.resConsultaSelectA3(query3);
	%>
	<table class="table">
		<%
			for (int i = 0; i < tablares3.length; i++) {
		%>
		<tr>
			<%
				for (int j = 0; j < tablares3[i].length; j++) {
			%>
			<td><%=tablares3[i][j]%></td>
			<%
				}
			%>
		</tr>
		<%
			}
		%>
	</table>
	<section>
					<h3>Listado de las 5 Queries propuestas:</h3>
					<Select>
						<option value="Query2">Query 1</option>
						<option value="Query3">Query 2</option>
						<option value="Query4">Query 3</option>
						<option value="Query5">Query 4</option>
						<option value="Query6">Query 5</option>
						<br />
					</Select>
					<%
						String query2 = "SELECT Alias Modulo, COUNT(modulos_idModulo) Horas_Semanales FROM modulos M LEFT JOIN modulos_has_TramosHorarios H ON (M.idModulo = H.modulos_idModulo) LEFT JOIN TramosHorarios T ON (H.TramosHorarios_idTramo = T.idTramo) GROUP BY idModulo;";
						beanDB basededatos2 = new beanDB();
						String[][] tablares2 = basededatos2.resConsultaSelectA3(query2);
					%>
					<table class="table">
						<%
							for (int i = 0; i < tablares2.length; i++) {
						%>
						<tr>
							<%
								for (int j = 0; j < tablares2[i].length; j++) {
							%>
							<td><%=tablares2[i][j]%></td>
							<%
								}
							%>
						</tr>
						<%
							}
						%>
					</table>
				</section>
					<p>----------------------------------------------------------------------------</p>
					<%
						String query3 = "SELECT p.nombre Nombre, p.apellidos Apellido, COUNT(idModulo) Modulos FROM profesores p LEFT JOIN modulos m ON (p.idProfesor = m.Profesores_idProfesor) GROUP BY idProfesor;";
						beanDB basededatos3 = new beanDB();
						String[][] tablares3 = basededatos3.resConsultaSelectA3(query3);
					%>
					<table class="table">
						<%
							for (int i = 0; i < tablares3.length; i++) {
						%>
						<tr>
							<%
								for (int j = 0; j < tablares3[i].length; j++) {
							%>
							<td><%=tablares3[i][j]%></td>
							<%
								}
							%>
						</tr>
						<%
							}
						%>
					</table>
				</section>
</body>
</html>