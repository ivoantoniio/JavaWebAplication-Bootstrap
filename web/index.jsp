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
        <title>Índice</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/navbar.jspf" %>
        <div class="container-fluid">
        </div>
        <br>
        </div>
        <h3>Ivo Antonio Esteves Coelho</h3>
        <h3>RA: 1290482023006 </h3>
        
        <br>
        
        <h2>Juros Simples</h2>
        <form action="juros-simples.html" method="post">
    <div>
        <label for="valor">Valor :</label>
        <input type="number" value="" name="valor" />
        
    </div>
    <br>        
    <div>
        <label for="juros">Juros em % :</label>
        <input type="number" value="" name="juros" step="any" />
        
    </div>
    <br>
    <div>
        <label for="tempo">Tempo:</label>
        <input type="number" value="" name="tempo" />
        
    </div>
    <br>
    <input name="simples" type="submit" value= "Juros Simples"/>
</form>

           <br>
        
        <h2>Juros Composto</h2>
        
        <form action="juros-composto.html" method="post">
    <div>
        <label for="valor">Valor Inicial:</label>
        <input type="number" value="" name="valor" />
        
    </div>
    <br>        
    <div>
        <label for="juros">Taxa de Juros em % :</label>
        <input type="number" value="" name="juros" step="any" />
        
    </div>
    <br>
    <div>
        <label for="tempo">Tempo(Anual):</label>
        <input type="number" value="" name="tempo" />
        
    </div>
    <br>
    <!---<div>
        <label for="numero">Multiplicar valor por: <label>
        <input type="number" value="" name="numero" />
        
    </div>--->
    <br>
    <input name="composto" type="submit" value= "Juros Composto"/>
</form>
        
        
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>
