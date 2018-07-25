<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="org.apache.commons.io.output.*" %>
<%@ page import="br.edu.ifg.proi.teste.PDFManager" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ include file="cabecalho.jsp"%>

</head>
<body>
<%
/**
 * Classe utilizada para fazer upload de arquivos.
 *
 */

//Limitando o Tamanho do arquivo
 File file ;
 int maxFileSize = 5000 * 1024;
 int maxMemSize = 5000 * 1024;
	//TROCAR O DISCO
 String filePath = "E:\\";
 
 int paginas = 0;
 int palavras = 0;
 String Texto = null;

 String contentType = request.getContentType();
 if ((contentType.indexOf("multipart/form-data") >= 0)) {

    DiskFileItemFactory factory = new DiskFileItemFactory();
    factory.setSizeThreshold(maxMemSize);
    factory.setRepository(new File("c:\\temp"));
    ServletFileUpload upload = new ServletFileUpload(factory);
    upload.setSizeMax( maxFileSize );
    try{ 
       List fileItems = upload.parseRequest(request);
       Iterator i = fileItems.iterator();
       out.println("<html>");
       out.println("<body>");
       while ( i.hasNext () ) 
       {
          FileItem fi = (FileItem)i.next();
          if ( !fi.isFormField () )  {
              String fieldName = fi.getFieldName();
              String fileName = fi.getName();
              boolean isInMemory = fi.isInMemory();
              long sizeInBytes = fi.getSize();
              file = new File( filePath + fileName) ;
              fi.write( file ) ;
             
              PDFManager pdfManager = new PDFManager();
              pdfManager.setFilePath(filePath + fileName);
                 
              Texto = pdfManager.ToText();
                             
              paginas = pdfManager.contaPg();
              palavras = pdfManager.contaPalavras();
              
              
          }
       }
       out.println("</body>");
       out.println("</html>");
    }catch(Exception ex) {
       System.out.println(ex);
    }
 }
 
%>

<ul>
<li><h2><%out.println(" Número de Páginas: " + paginas);%></h2></li>
<li><h2><%out.println("Número de Caractéres: " + Texto.length());%></h2></li>
<li><h2><%out.println("Número de Palavras: "+ palavras);%></h2></li>
          
</ul>

<form method="post" action="orcamento.jsp">
<fieldset>
<legend><h1>Escolha os tipos de Revisao</h1></legend>
 <div>
  <input type="checkbox" id="ABNT" name="ABNT" value="y">
  <label for="ABNT"><h2>Adequação às normas da ABNT</h2></label>
</div>
 
<div>
  <input type="checkbox" id="gramatical" name="gramatical" value="y">
  <label for="gramatical"><h2>Revisão gramatical</h2></label>
</div>
 <div>
  <input type="checkbox" id="formatacao" name="formatacao" value="y">
  <label for="formatacao"><h2>Edição/formatação</h2></label>
</div>
 <div>
  <input type="checkbox" id="textualGramatical:" name="textualGramatical" value="y">
  <label for="textualGramatical"><h2>Revisão Textual-gramatical</h2></label>
</div>

 <input type="hidden" name="paginas" value="<%out.print(paginas);%>" />
  <input type="hidden" name="caracteres" value="<%out.print(Texto.length());%>" />
   <input type="hidden" name="palavras" value="<%out.print(palavras);%>" /> <br /> 
</fieldset>
<input type="submit" value="Ver Orçamento" />
</form>



</body>
</html>