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

    <section class="py-5 text-center container">
        <div class="row py-lg-5">
          <div class="col-lg-6 col-md-8 mx-auto">
            <h1 class="fw-light">BIENVENIDO A LA ZONA DE COMPRAS</h1>
            <p class="lead text-body-secondary">Aqui puedes ver todos los datos de las compras existentes o registrar una nueva</p>
            <p>
              <a href="registerBuy.jsp?user_name=<%= request.getParameter("user_name") %>" class="btn btn-primary my-2">Registrar una compra</a>


            </p>
          </div>
        </div>
      </section>



  <div class="album py-5 bg-body-tertiary">
    <div class="container">
        <h2 style="text-align: center;">LISTA DE COMPRAS</h2>
      <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3" style="justify-content: center;">

                <%
                  Class.forName("com.mysql.cj.jdbc.Driver");
                  Database.connect();
                  List<Buy> buyList = Database.jdbi.withExtension(Buy_DAO.class, Buy_DAO::getBuys);
                      for (Buy buy:
                           buyList) {
                  int idc = buy.getId_buy();
                %>

        <div class="col">
          <div class="card shadow-sm h-500">
            <div class="card-body">
              <b class="card-text">ID DE COMPRA = <%= buy.getId_buy() %></b>
              <p class="card-text">CLIENTE = <%= buy.getClient().getFirstName() + " " +  buy.getClient().getLastName()%></p>
              <p class="card-text">PRODUCTO = <%= buy.getProduct().getName_p() %></p>

              <p class="card-text">FECHA DE COMPRA = <%= buy.getBuyDate() %></p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">

                  <button type="button" class="btn btn-sm btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#exampleModal<%= idc%>">BORRAR</button>
                  <div class="modal fade" id="exampleModal<%= idc%>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                              <div class="modal-content">
                                <div class="modal-header">
                                  <h5 class="modal-title" id="exampleModalLabel">CONFIRMACION DE BORRADO</h5>
                                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                  ¿Seguro que desea borrar la compra?
                                </div>
                                <div class="modal-footer">
                                  <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                                  <a href="deleteBuy?id=<%= idc %>&user_name=<%= request.getParameter("user_name") %>" type="button" class="btn btn-primary" >Aceptar</a>
                                </div>
                              </div>
                            </div>
                  </div>
                  <a href="detailsBuyUser.jsp?id=<%= buy.getId_buy()%>&user_name=<%= request.getParameter("user_name") %>" class="btn btn-sm btn-outline-secondary">VER DETALLES</a>
                </div>
                <small class="text-body-secondary"> </small>
              </div>
            </div>

          </div>
        </div>


        <%
            }
         %>
      </div>
    </div>
  </div>

</main>


<%@include file= "includes/footer.jsp" %>