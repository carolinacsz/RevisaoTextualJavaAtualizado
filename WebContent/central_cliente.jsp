<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="br.edu.ifg.proi.modelo.Cliente"%> 

<head>
<title>Central do Cliente</title>
<%@ include file="cabecalho.jsp"%>
<%
Cliente c = (Cliente)session.getAttribute("usuarioAutenticado");
%>

</head>
<body>



<div id="header-wrapper">
	<div id="header" class="container">
		
		<div id="logo">
			<h1><a href="#">Perfil do Cliente</a></h1>
			
		 </div>
	
	<div >			
		<ul>	
		<li><h2>Nome: <%
			String nome = request.getParameter("nome");
			 if(nome!=null){
				  c.setNome(nome);  
			  }
			out.println(c.getNome());
			%></h2></li>
			<br/>
			<li><h2>CPF: <%
			String cpf = request.getParameter("cpf");
			if(cpf!=null){
				  c.setCpf(cpf);  
			 }
			out.println(c.getCpf());
			%></h2></li> 
			<br/>
			<li><h2>Contato: <%
			String contato = request.getParameter("contato");
			if(contato!=null){
				  c.setContato(contato);  
			 }
			out.println(c.getContato());
			%></h2></li>
			<br/>
			<li><h2>Email: <%
			String email = request.getParameter("email");
			if(email!=null){
				  c.setEmail(email);  
			 }
			out.println(c.getEmail());
		%></h2></li>
		</ul>	
		
		
		<td><a HREF="altera_cliente.jsp"><h2>Alterar Cadastro</h2></a></td><br />

		<td><a HREF="excluir_cadastro.jsp"><h2>Excluir Cadastro</h2></a></td><br />
					
		
		<INPUT  TYPE="button" VALUE ="Voltar" onClick="history.go(-1)" style="width: 100px; height: 50px"/>
	</div>
	
	
	</div>
	
	
	
</div>

<!-- RODAPÉ -->


		<div id="copyright">
			<p>&copy; Copyright 2018 - Todos os direitos reservados | Desenvolvido por Alunos do IFG.</p>
		</div>
		
		<!-- RODAPÉ -->
	</body>
</html>
