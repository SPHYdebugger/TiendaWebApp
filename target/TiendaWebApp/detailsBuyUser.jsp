<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<%@ page import="com.svalero.DAO.Database" %>
<%@ page import="com.svalero.DAO.Buy_DAO" %>
<%@ page import="com.svalero.Domain.Buy" %>


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

            int buyId = Integer.parseInt(request.getParameter("id"));
                Class.forName("com.mysql.cj.jdbc.Driver");
                Database.connect();
                Buy buy = Database.jdbi.withExtension(Buy_DAO.class, dao -> dao.searchBuy(buyId));
        %>



    <div class="container" style="margin-top: 100px;">
        <h2 style="text-align: center;">DETALLE DE LA COMPRA</h2>
        <div class="row  d-flex justify-content-center">

            <ul class="list-group col-4">
                <li class="list-group-item font-weight-bold">ID DE COMPRA</li>
                <li class="list-group-item font-weight-bold">FECHA</li>
                <li class="list-group-item font-weight-bold">ID CLIENTE COMPRADOR</li>
                <li class="list-group-item font-weight-bold">NOMBRE CLIENTE</li>
                <li class="list-group-item font-weight-bold">APELLIDOS CLIENTE</li>
                <li class="list-group-item font-weight-bold">ID PRODUCTO COMPRADO</li>
                <li class="list-group-item font-weight-bold">NOMBRE PRDUCTO</li>
                <li class="list-group-item font-weight-bold">PRECIO PRODUCTO</li>



            </ul>
            <ul class="list-group col-4">
                  <li class="list-group-item"><%= buy.getId_buy() %></li>
                  <li class="list-group-item"><%= buy.getBuyDate() %></li>
                  <li class="list-group-item"><%= buy.getClient().getId_client() %></li>
                  <li class="list-group-item"><%= buy.getClient().getFirstName() %></li>
                  <li class="list-group-item"><%= buy.getClient().getLastName() %></li>
                  <li class="list-group-item"><%= buy.getProduct().getId_product() %></li>
                  <li class="list-group-item"><%= buy.getProduct().getName_p() %></li>
                  <li class="list-group-item"><%= buy.getProduct().getPrice() %></li>



            </ul>


        </div>

        <div class="container  d-flex justify-content-center">
        <a href="buysUser.jsp?user_name=<%= request.getParameter("user_name") %>" type="button" class="btn btn-primary col-4" style="margin-top: 10px;">Volver a la lista de compras</a>
        </div>
    </div>
</main>

<%@include file= "includes/footer.jsp" %>