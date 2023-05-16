<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<%@ page import="com.svalero.DAO.Database" %>
<%@ page import="com.svalero.DAO.Buy_DAO" %>
<%@ page import="com.svalero.DAO.ClientDAO2" %>
<%@ page import="com.svalero.DAO.ProductDAO" %>
<%@ page import="com.svalero.Domain.Buy" %>
<%@ page import="com.svalero.Domain.Client" %>
<%@ page import="com.svalero.Domain.Product" %>

<%@ page import="java.util.List" %>

<!doctype html>
<html lang="es">
  <head>

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="Tienda WEB APP" content="">
    <meta name="Santiago Perez" content="">
    <link rel="icon" href="resources/flor.png">

    <title>STETIC100 Tienda WEB </title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.0/examples/carousel/">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <!-- Custom styles for this template -->
    <link href="carousel.css" rel="stylesheet">

    <style>
    .card img{
      height: 250px;
    }
    </style>


  </head>
 <body>

    <header>
      <nav class="navbar navbar-expand-md navbar-dark fixed-top" style="padding: 5px; background-color: #EAD0D1; height: 80px; ">
        <a class="navbar-brand" href="index.jsp">
          <img src="resources/logo.png" alt="" style="width: 120px; height: 80px; margin: -8%;">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
          <ul class="navbar-nav mr-auto" >
            <li class="nav-item active">
              <a class="nav-link" href="indexUser.jsp?user_name=<%= request.getParameter("user_name") %>" style="color: black;">INICIO <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#" style="color: black;">EVENTOS</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#" style="color: black;">CONTACTO</a>
            </li>
          </ul>
          <h2><%= request.getParameter("user_name") %></h2>
          <a href="index.jsp" type="button" class="btn btn-sm btn-outline-primary" style="margin-left: 10;" >CERRAR SESIÓN</a>

        </div>
      </nav>
    </header>
<main>


     <%

         Class.forName("com.mysql.cj.jdbc.Driver");
         Database.connect();
         List<Client> clientList = Database.jdbi.withExtension(ClientDAO2.class, ClientDAO2::getClients);
         List<Product> productList = Database.jdbi.withExtension(ProductDAO.class, ProductDAO::getProducts);

     %>

    <div class="container col-6" style="margin-top: 100px;">
    <h2 style="text-align: center;">REGISTRAR UNA COMPRA</h2>
    <form action="addBuy" method="post" enctype= "multipart/form-data">
      <div class="mb-3">
        <label for="id_client" class="form-label">ID CLIENTE</label>

        <select class="form-select" id="id_client" name="id_client"  required>

           <% for (Client client : clientList)  { %>
           <option value="<%= client.getId_client() %>"><%= client.getDni() %></option>
           <% } %>

        </select>
        </div>



      <div class="mb-3">
         <label for="id_product" class="form-label">NOMBRE PRODUCTO</label>
         <select class="form-select" id="id_product" name="id_product"  required>

            <% for (Product product : productList)  { %>
            <option value="<%= product.getId_product() %>"><%= product.getName_p() %></option>
            <% } %>

         </select>
      </div>
      <div class="mb-3">
         <label for="date" class="form-label">FECHA DE COMPRA</label>
         <input type="date" class="form-control" id="date" name="date">
      </div>
      <input type="hidden" name="user_name" value="<%= request.getParameter("user_name") %>">


        <div class="container  d-flex justify-content-center">
            <button type="submit" class="btn btn-primary">Confirmar el registro</button>
        </div>
    </form>

        <div class="container  d-flex justify-content-center">
        <a href="buysUser.jsp?user_name=<%= request.getParameter("user_name") %>" type="button" class="btn btn-primary col-4" style="margin-top: 20px;">Volver a la lista de compras</a>
        </div>
    </div>
</main>

<%@include file= "includes/footer.jsp" %>
