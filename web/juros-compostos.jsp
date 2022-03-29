<%-- 
    Document   : index
    Created on : 28 de mar. de 2022, 13:53:49
    Author     : Fatec
--%>

<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.IOException"%>
<%@page import="javax.servlet.ServletException"%>
<%@page import="javax.servlet.annotation.WebServlet"%>
<%@page import="javax.servlet.http.HttpServlet"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page import="javax.servlet.http.HttpServletResponse"%>
<%@page import="javax.servlet.annotation.WebServlet"%>
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
            <h3>Juros Compostos</h3>
        </div>
        <br>
        <form action="juros-compostos.jsp" method="post">
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
            @WebServlet(name = "JurosCompostoServlet", urlPatterns = {"/juros-composto.html"})
public class JurosCompostoServlet extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String error = null;
            double n1 = 0;
            double n2 = 0;
            double n3 = 0;
            try {
                 String v = request.getParameter("valor");
                 String j = request.getParameter("juros");
                 String t = request.getParameter("tempo");
                 String n = request.getParameter("numero");
                 
                 n1 = Double.parseDouble(j);
                 n2 = Double.parseDouble(t);
                 n3 = Double.parseDouble(v);
            }catch(Exception e){
                error = e.getMessage();
            }
     
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet JurosCompostoServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h3><a href='index.jsp'>Voltar</a></h3>");
            out.println("<h1>Juros Composto</h1>");
            if (error != null){
                out.println("<span style='color:red'>Erro ao tentar ler parâmetros</span>");
            }else {
                double jurosComposto;
                jurosComposto = n3* (Math.pow((1 + n1/100), (n2 * 1))) - n3;
                out.println(jurosComposto);
            }
            out.println("</body>");
            out.println("</html>");
        }
    }
        %>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>
