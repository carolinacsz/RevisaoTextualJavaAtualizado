<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="br.edu.ifg.proi.modelo.Cliente"%> 
      <%@page import="br.edu.ifg.proi.dao.ClienteDAO"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@ include file="cabecalho.jsp"%>
</head>
<body>
<%

ClienteDAO dao = new ClienteDAO();
dao.delete(c);
%>

		<!-- PRA FICAR ESCRITO NO MEIO A MENSAGEM DE EXCLUSÃO :D -->
		<div id="header-wrapper">
			<div id="footer" class="container">
				<div>
					<header class="title">
						<h2>Cadastro excluído!!!</h2> <br />
						
					<td><a HREF="login.html" ><h1>Voltar</h1></a></td>
				</div>
			</div>
      </div>

	<!-- PRA FICAR ESCRITO NO MEIO A MENSAGEM DE EXCLUSÃO :D -->



</body>
</html>