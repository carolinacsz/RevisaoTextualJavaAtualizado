<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="br.edu.ifg.proi.modelo.Cliente"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Alterar Cadastro</title>
<link rel="stylesheet" href="css/login.css">
<%@ include file="cabecalho.jsp"%>
</head>
<body>


<div class="login">
  <div class="form">
      <form action="AlterarClienteServlet" method="post">
      
      <input type="text" name="nome" value="<%         
            out.println(c.getNome());
            %>">
      <input type="text" maxlength="14"  name="cpf" disabled="disabled" value="<%         
            out.println(c.getCpf());
            %>">
      <input type="text" maxlength="11"  name="contato" value="<%         
            out.println(c.getContato());
            %>">
      <input type="text" name="email" value="<%         
            out.println(c.getEmail());
            %>">
      <input type="text" name="usuario" disabled="disabled" value=" <%         
            out.println(c.getUsuario());
            %>">
            
            <input type="text" name="endereco" value=" Endereco">
            
           
      <input type="password" name="senha" maxlength="20" placeholder="insira a senha">
      <input type="password" name="confirma_senha" maxlength="20" placeholder="confirme a senha">
     
      <button> Alterar </button>
      
    </form>
    
    
    <INPUT  TYPE="button" VALUE ="Voltar" onClick="history.go(-1)"/>
  </div>
</div>

</body>
</html>