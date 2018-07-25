<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="br.edu.ifg.proi.modelo.Cliente"%> 
<html>

<head>
<title>Bem-vindo</title>

<%@ include file="cabecalho.jsp"%>

<body>



<div id="header-wrapper">
	<div id="header" class="container">
		
		<div id="logo">
			<h1><a href="#">Revisão Textual Online</a></h1><br />
			<span>Desenvolvido por Alunos do IFG</span>
		 </div>
	
	
	</div>
	
</div>

<div id="wrapper1">
	<div id="welcome" class="container">
		<div class="title">
			<h2>Bem-vindo ao nosso site</h2><br /><br />
			<span class="byline">Revisão Textual Online</span>
		 </div>
		<div class="content">
			<p>Este é o <strong>Revisão Testual Online</strong>, um sistema que permite a análise de textos, de forma a adequá-lo às normas gramaticais requisitadas, propondo melhorias para a clareza e qualidade do que foi produzido.</p>
			<a href="paginaServico.jsp" class="button">Conheça nossos serviços</a> 
		</div>
	</div>
</div>

	

	<!-- RODAPÉ -->

		<div id="wrapper4">
			<div id="footer" class="container">
				<div>
					<header class="title">
						<h2>Fale conosco</h2> <br />
						<span class="byline">Redes Sociais</span> </header>
					<ul class="contact">
						<li><a href="https://twitter.com/?lang=pt-br" class="icon icon-twitter"><span>Twitter</span></a></li>
						<li><a href="https://www.facebook.com/" class="icon icon-facebook"><span></span></a></li>
						<li><a href="https://dribbble.com/" class="icon icon-dribbble"><span>Pinterest</span></a></li>
						<li><a href="https://www.tumblr.com/" class="icon icon-tumblr"><span>Google+</span></a></li>
						<li><a href="https://plus.google.com/discover" class="icon icon-rss"><span>Pinterest</span></a></li>
					</ul>
				</div>
			</div>
		</div>
		<div id="copyright">
			<p>&copy; Copyright 2018 - Todos os direitos reservados | Desenvolvido por Alunos do IFG.</p>
		</div>
		
		<!-- RODAPÉ -->
	</body>
</html>