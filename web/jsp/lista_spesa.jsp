<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Lista della Spesa</title>
</head>
<body>
<h2>Lista della spesa di <%=request.getParameter("username")%></h2>


<h3>Aggiungi un nuovo prodotto alla tua lista</h3>
<form action=" <%= request.getContextPath() + "/ListaSpesa"%>" method="get">
    <label for="nomeProdotto">Nome</label>
    <input type="text" name="nomeProdotto" placeholder="nome del prodotto">

    <br>

    <label for="categoriaProdotto">Categoria</label>
    <input type="text" name="categoriaProdotto" placeholder="Primi/Secondi/Contorni">

    <br>

    <label for="quantitàProdotto">Quantità</label>
    <input type="number" name="quantitàProdotto" id="quantitaProdotto" placeholder="2/3/4">

    <br>

    <button type="sumbit" id="aggiugniProdotto">Aggiungi un prodotto</button>
</form>

<h3>Prodotti da acquistare</h3>
<ul>
    <li>
        <div>Fusilli</div>
        <div>Primi</div>
        <div>3 unità da acquistare</div>
    </li>
    <li>
        <div>Banane</div>
        <div>Frutta</div>
        <div>2 unità da acquistare</div>
    </li>
    <li>
        <div>Mele</div>
        <div>Frutta</div>
        <div>5 unità da acquistare</div>
    </li>
</ul>

<%
    List<String> listaSpesa = (List<String>) request.getSession().getAttribute("listaSpesa");
    if(listaSpesa!=null && listaSpesa.size()>0){
        out.println("<ul>");
        for(String prodotto: listaSpesa){
            out.println("<li>" + prodotto + "</li>");
        }
        out.println("</ul>");
    }else{
        out.println("<h5>Nessun articolo presente nella lista della spesa</h5>" );
    }
%>

<script type="text/javascript" src="../script/checkField.js"></script>
</body>
</html>
