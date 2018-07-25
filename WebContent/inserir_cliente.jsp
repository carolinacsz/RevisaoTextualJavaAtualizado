<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastre-se</title>

<link rel="stylesheet" href="css/cadastro.css">

</head>
<body>

<div class="login">
  <div class="form">
      <form action="UsuarioCadastro" method="post">
      
      <table>
			<tr>
			  <td><label>Insira seus Dados:</label><p><input type="text" name="nome" placeholder="Nome" id="nome" size="40"/></p></td>
			  <td><label>Endereço:</label><p><input  type="text" name="logradouro" placeholder="Logradouro" id="logradouro" size="40" placeholder="logradouro"/></p></td>
			  
			</tr>			
			
			<tr>
			  <td><label></label><p><input type="text" maxlength="14"  name="cpf" placeholder="CPF" id="cpf" size="40"/></p></td>
			  <td><label></label><p><input type="text" name="CEP" placeholder="CEP" id="CEP" size="40" /></p></td>
			</tr>
			
			<tr>
			  <td><label></label><p><input type="text" maxlength="11"  name="contato" placeholder="Telefone" id="contato" size="40" /></p></td>
			  <td><label></label><p><input type="text" name="cidade" placeholder="Cidade" id="cidade" size="40" /></p></td>
			</tr>
			
			<tr>
			  <td><label></label><p><input type="text" name="email" placeholder="Email" id="email" size="40" /></p></td>
			  <td><label></label><p><input type="text" name="bairro" placeholder="Bairro" id="bairro" size="40" /></p></td>
			</tr>
			
			<tr>
			  <td><label></label><p><input type="text" name="usuario" placeholder="Usuario" id="usuario" size="40" /></p></td>
			  <td><label></label><p><input type="text" name="UF" placeholder="UF" id="UF" size="40" /></p></td>
			</tr>
			
			<tr>
			  <td><label></label><p><input type="password" name="senha" maxlength="20" placeholder="Insira a senha" size="40" /></p></td>
			  <td><label></label><p><input type="password" name="confirma_senha" maxlength="20" placeholder="Confirme a senha" size="40"/></p></td>
			</tr>
			
		</table>
		<button> Cadastrar </button>
		<INPUT  TYPE="button" VALUE ="Voltar" onClick="history.go(-1)"/>
		</form>
	</div>

</div>

</body>
</html>