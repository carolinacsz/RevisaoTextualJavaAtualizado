<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Fazer Orçamento</title>
<%@ include file="cabecalho.jsp"%> 

</head>
<body>

		
		
		<div id="header-wrapper">
			<div id="footer" class="container">
				<div>
					<header class="title">
						<h2>Selecione um arquivo:</h2> <br />
						
						<form action="Upload.jsp" method="post"
				             enctype="multipart/form-data">
							<input type="file" name="file" style="height: 100px" />
							<br />
							<input type="submit" value="Fazer Upload de arquivo" style="height: 100px" style="weight: 50px"/>
						</form>
					
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