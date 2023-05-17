<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<%@ page import="com.svalero.DAO.Database" %>

<%@ page import="com.svalero.Domain.Product" %>
<%@ page import="com.svalero.DAO.ProductDAO" %>

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


  <hr class="featurette-divider">
    <h2 style="text-align: center;">MODIFICAR EL PRODUCTO</h2>
        <div class="container text-center">
            <img src="../Tienda_data/<%= request.getParameter("image")%>" alt="" style="width: 400px; margin-bottom: 20px; border-radius: 10%;">

        </div>

        <div class="container text-center">
            <button type="button" class="btn btn-sm btn-outline-secondary " data-bs-toggle="modal" data-bs-target="#changeImage">Click aquí para modificar la foto</button>
        </div>


     <div class="modal fade" id="changeImage" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">CAMBIAR IMAGEN DE CLIENTE</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>
                  <div class="modal-body">
                    Elija la nueva imagen
                     <form action="editImageProduct" method="post" enctype= "multipart/form-data">
                     <div style="margin-bottom: 20px;">
                                <input type="hidden" name="user_name" value="<%= request.getParameter("user_name") %>">
                                 <input type="text" class="form-control" id="id" name="id" value='<%= request.getParameter("id") %>' hidden>
                                 <input type="file" class="form-control" id="image" name="image">
                     </div>
                     <div class="container  d-flex justify-content-center">
                                 <button type="submit" class="btn btn-primary">Confirmar el cambio</button>
                             </div>
                     </form>

                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>

                  </div>
                </div>
              </div>
            </div>


    <div class="container col-6">


    <form action="editProduct" method="post" enctype= "multipart/form-data">
      <div class="mb-3">
              <label for="id" class="form-label">ID</label>
              <input type="text" class="form-control" id="id" name="id" value='<%= request.getParameter("id") %>'>
            </div>
      <div class="mb-3">
        <label for="name_p" class="form-label">NOMBRE</label>
        <input type="text" class="form-control" id="name_p" name="name_p" value='<%= request.getParameter("name_p") %>'>
      </div>
      <div class="mb-3">
        <label for="description" class="form-label">DESCRIPCIÓN</label>
        <input type="text" class="form-control" id="description" name="description" value='<%= request.getParameter("description") %>'>
      </div>
      <div class="mb-3">
         <label for="format" class="form-label">FORMATO ml.</label>
         <input type="text" class="form-control" id="format" name="format" value='<%= request.getParameter("format") %>'>
      </div>
      <div class="mb-3">
          <label for="price" class="form-label">PRECIO euros</label>
          <input type="text" class="form-control" id="price" name="price" value='<%= request.getParameter("price") %>'>
      </div>
      <input type="hidden" name="user_name" value="<%= request.getParameter("user_name") %>">





        <div class="container  d-flex justify-content-center">
            <button type="submit" class="btn btn-primary">Confirmar el registro</button>
        </div>
    </form>

        <div class="container  d-flex justify-content-center">
        <a href="productsUser.jsp?user_name=<%= request.getParameter("user_name") %>" type="button" class="btn btn-primary col-4" style="margin-top: 20px;">Volver a la lista de productos</a>
        </div>
    </div>
</main>

<%@include file= "includes/footer.jsp" %>