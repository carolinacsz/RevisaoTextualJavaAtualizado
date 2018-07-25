<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="br.edu.ifg.proi.modelo.Cliente"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  
  <head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title></title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="css/menu/fonts/menu/http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
<link href="css/menu/default.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/menu/fonts.css" rel="stylesheet" type="text/css" media="all" />



</head>
<body>

<div id="header-wrapper">
	<div id="header" class="container">
		<div id="menu">
			<ul>
				<li class="current_page_item"><a href="menu_cliente.jsp" accesskey="1" title="">Apresentação</a></li>
				<li><a href="paginaServico.jsp" accesskey="2" title="">Serviços</a></li>
				<li><a href="central_cliente.jsp" accesskey="3" title="">Central do Cliente</a></li>
				<li><a href="contato.jsp" accesskey="4" title="">Contato</a></li>
				<li><a href="telaUpload.jsp" accesskey="5" title="">Fazer Orçamento</a></li>
				<li><a href="sair.jsp" accesskey="6" title="">Sair</a></li>
								           		 
				<li><a href="#usuario" accesskey="7" title=""> 
				<%         
	            Cliente temporario = (Cliente)session.getAttribute("usuarioAutenticado");
	            //String nome = temporario.getUsuario();
	            out.println("Seja Bem Vindo " + temporario.getUsuario());
            
           		 %></a></li>
            
            	
				
            
            
				
				
				
				
			</ul>
		</div>
	
	</div>
	
	
</div>


</body>
  
  
  
</html>