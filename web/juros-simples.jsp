<%-- 
    Document   : index
    Created on : 28 de mar. de 2022, 13:53:49
    Author     : Fatec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <title>Índice - JavaApp</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/navbar.jspf" %>
        <div class="container-fluid">
            
            <h3>Juros Simples</h3>
            
        <form action="juros-simples.jsp" method="post">
            <div>
                <label for="presente" class="form-label">Valor :</label>
                <input type="number" value="" name="presente"/>
            </div>
            <br>        
            <div>
                <label for="juros">Juros em % :</label>
                <input type="number" value="" name="juros" step="any" />
            </div>
            <br>
            <div>
                <label for="tempo">Tempo(meses):</label>
                <input type="number" value="" name="tempo" />
            </div>
            <br>
            <input name="simples" type="submit" class="btn btn-primary" value= "Calcular"/>
        </form>
            
         <% 
         String error = null;
            double n1 = 0;
            double n2 = 0;
            double n3 = 0;
            
            try {
               String v = request.getParameter("valor");
               String j = request.getParameter("juros");
               String t = request.getParameter("tempo"); 
                
               n1 = Double.parseDouble(j);
               n2 = Double.parseDouble(t);
               n3 = Double.parseDouble(v);
                
            }catch(Exception e){
                error = e.getMessage();
            }
            
            if (n1 > 0){
                double jurosSimples;
                jurosSimples = (n3*n2*n1)/100;
                out.println(jurosSimples);
            }else {
                double jurosSimples;
                jurosSimples = (n3*n2*n1)/100;
                out.println(jurosSimples);
            }
            %>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>
