<%-- 
    Document   : consultaWebService
    Created on : 25/06/2019, 10:08:31
    Author     : bruno.alves
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%--consulta ao Web Service dos correios atráves do Cep.--%>

    <%-- start web service invocation --%><hr/>
    <%
       String nome = request.getParameter("cep"); 
    try {
	br.com.correios.bsb.sigep.master.bean.cliente.AtendeClienteService service = new br.com.correios.bsb.sigep.master.bean.cliente.AtendeClienteService();
	br.com.correios.bsb.sigep.master.bean.cliente.AtendeCliente port = service.getAtendeClientePort();
	 // TODO initialize WS operation arguments here
	java.lang.String cep = nome;
	// TODO process result here
	br.com.correios.bsb.sigep.master.bean.cliente.EnderecoERP result = port.consultaCEP(cep);
	out.println("Endereço : "+result.getEnd()+"<br>");
        out.println("Bairro : "+result.getBairro()+"<br>");
        out.println("Cidade : "+result.getCidade()+"<br>");
        out.println("UF: "+result.getUf());
    } catch (Exception ex) {
        
        out.println("Esse Cep Não Existe tente novamente!!!");
        
       
    }
    %>
    <%-- end web service invocation --%>
    <html>
    <head>
        <title>Cep</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <br>
        <br>
        <input type="button" name="cancelar"   value="Voltar para Consultar" onclick="location.href='index.html'">
    

    </body>
</html>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    