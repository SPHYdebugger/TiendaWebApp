<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<%@ page import="com.svalero.DAO.Database" %>
<%@ page import="com.svalero.DAO.ClientDAO2" %>
<%@ page import="com.svalero.Domain.Client" %>


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
        <h1 class="fw-light">BIENVENIDO A LA ZONA DE CLIENTES</h1>

      </div>
    </div>
  </section>

  <hr class="featurette-divider">
    <h2 style="text-align: center;">REGISTRO DE CLIENTE</h2>


    <div class="container col-6">
    <form action="addClient" method="post" enctype= "multipart/form-data">
      <div class="mb-3">
        <label for="firstName" class="form-label">NOMBRE</label>
        <input type="text" class="form-control" id="firstName" name="firstName">
      </div>
      <div class="mb-3">
        <label for="lastName" class="form-label">APELLIDOS</label>
        <input type="text" class="form-control" id="lastName" name="lastName">
      </div>
      <div class="mb-3">
         <label for="dni" class="form-label">DNI</label>
         <input type="text" class="form-control" id="dni" name="dni">
      </div>
      <div class="mb-3">
          <label for="address" class="form-label">DIRECCIÓN</label>
          <input type="text" class="form-control" id="address" name="address">
      </div>
      <div class="mb-3">
           <label for="city" class="form-label">CIUDAD</label>
           <input type="text" class="form-control" id="city" name="city">
      </div>
      <div class="mb-3">
           <label for="email" class="form-label">EMAIL</label>
           <input type="email" class="form-control" id="email" name="email">
      </div>
      <div class="mb-3">
            <label for="password" class="form-label">CONTRASEÑA</label>
            <input type="password" class="form-control" id="password" name="password">
      </div>
      <div class="mb-3">
            <label for="telephone" class="form-label">TELEFONO</label>
            <input type="text" class="form-control" id="telephone" name="telephone">
      </div>
      <div style="margin-bottom: 20px;">
            <label for="image" class="form-label">Imagen</label>
            <input type="file" class="form-control" id="image" name="image">
      </div>
        <input type="hidden" name="user_name" value="<%= request.getParameter("user_name") %>">
        <div class="container  d-flex justify-content-center">
            <button type="submit" class="btn btn-primary">Confirmar el registro</button>
        </div>
    </form>

        <div class="container  d-flex justify-content-center">
        <a href="clientsUser.jsp" type="button" class="btn btn-primary col-4" style="margin-top: 20px;">Volver a la lista de clientes</a>
        </div>
    </div>
</main>

<%@include file= "includes/footer.jsp" %>