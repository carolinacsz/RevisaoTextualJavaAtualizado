<%@page import="br.edu.ifg.proi.servlet.UsuarioCadastro"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    <%@ page import="br.edu.ifg.proi.servlet.GeradorDeBoletoHTML" %>
    <%@ page import="br.com.caelum.stella.boleto.Boleto" %>
    <%@ page import="br.com.caelum.stella.boleto.Datas" %>
    <%@ page import="br.com.caelum.stella.boleto.Endereco" %>
    <%@ page import="br.com.caelum.stella.boleto.Pagador" %>
     <%@ page import="br.com.caelum.stella.boleto.bancos.BancoDoBrasil" %>
      <%@ page import="br.com.caelum.stella.boleto.transformer.GeradorDeBoleto" %>
      <%@ page import="br.com.caelum.stella.boleto.Banco" %>
      <%@ page import="br.com.caelum.stella.boleto.Beneficiario" %>
      <%@page import="br.edu.ifg.proi.modelo.Cliente"%> 
      <%@page import="java.util.Date"%> 
      <%@page import="java.util.Calendar"%>  
       <%@page import="java.util.Random"%>  

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>


<body>
<%String valor = request.getParameter("valor"); %>
<% 


Cliente temporario = (Cliente)session.getAttribute("usuarioAutenticado");

Datas datas = Datas.novasDatas()
.comDocumento(1, 5, 2018)
.comProcessamento(1, 5, 2018)
.comVencimento(2, 5, 2018);  

Endereco enderecoBeneficiario = Endereco.novoEndereco()
.comLogradouro("Rua dos bobos, 0")  
.comBairro("Bairro Grande")  
.comCep("01234-555")  
.comCidade("Goiania")  
.comUf("GO");  

//Quem emite o boleto
Beneficiario beneficiario = Beneficiario.novoBeneficiario()  
.comNomeBeneficiario("Revisao Textual SA")  
.comAgencia("1824").comDigitoAgencia("4")  
.comCodigoBeneficiario("76000")  
.comDigitoCodigoBeneficiario("5")  
.comNumeroConvenio("1207113")  
.comCarteira("18")  
.comEndereco(enderecoBeneficiario)
.comNossoNumero("9000206");  

Endereco enderecoPagador = Endereco.novoEndereco()
.comLogradouro(temporario.getEndereco().getLogradouro())
.comBairro(temporario.getEndereco().getBairro())  
.comCep(temporario.getEndereco().getCEP())  
.comCidade(temporario.getEndereco().getCidade())  
.comUf(temporario.getEndereco().getUF());  

//Quem paga o boleto
Pagador pagador = Pagador.novoPagador()  
.comNome(temporario.getNome())  
.comDocumento(temporario.getCpf())
.comEndereco(enderecoPagador);

Banco banco = new BancoDoBrasil();  

Boleto boleto = Boleto.novoBoleto()  
.comBanco(banco)  
.comDatas(datas)  
.comBeneficiario(beneficiario)  
.comPagador(pagador)  
.comValorBoleto(valor)  
.comNumeroDoDocumento("1234")  
.comInstrucoes("Pagavel em qualquer banco", "Nao receber apos o vencimento", "nao aceitar cheques", "atrasos podem gerar multas")  
.comLocaisDePagamento("local 1", "local 2");  

GeradorDeBoleto gerador = new GeradorDeBoleto(boleto);  

// Para gerar um boleto em PDF  


   
        Random radom  = new Random();
        int numeroTmp = 0;
        for(int i=0;i<10; i++) {
            numeroTmp=radom.nextInt(99999);
        }
    


gerador.geraPDF("E:/" + "Boleto"+ temporario.getNome() +  numeroTmp +".pdf");    

//request.getRequestDispatcher("menu_cliente.jsp").forward(request, response);

GeradorDeBoletoHTML gerador2 = new GeradorDeBoletoHTML(boleto);
gerador2.geraHTML(response.getWriter(), request);
 
%>


</body>
</html>