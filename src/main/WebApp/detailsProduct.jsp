<<<<<<< HEAD
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

=======
>>>>>>> 2b3e99bc3d9effd93a9632b89a122ebcaf05f8e6
<%@ page import="com.svalero.DAO.Database" %>

<%@ page import="com.svalero.Domain.Product" %>
<%@ page import="com.svalero.DAO.ProductDAO" %>

<%@ page import="java.util.List" %>


<<<<<<< HEAD
<%@include file="includes/headerProducts.jsp"%>
=======
<%@include file="includes/header.jsp"%>
>>>>>>> 2b3e99bc3d9effd93a9632b89a122ebcaf05f8e6
<main>

  <section class="py-5 text-center container">
    <div class="row py-lg-5">
      <div class="col-lg-6 col-md-8 mx-auto">
        <h1 class="fw-light">BIENVENIDO A LA ZONA DE PRODUCTOS</h1>
        <p class="lead text-body-secondary">Por favor elige una de las siguientes opciones</p>
        <p>
          <a href="#" class="btn btn-primary my-2">Registrar un producto</a>

        </p>
      </div>
    </div>
  </section>

  <hr class="featurette-divider">
    <h2 style="text-align: center;">DETALLE DEL PRODUCTO</h2>
<%

    int productId = Integer.parseInt(request.getParameter("id"));
        Class.forName("com.mysql.cj.jdbc.Driver");
        Database.connect();
        Product product = Database.jdbi.withExtension(ProductDAO.class, dao -> dao.searchProduct(productId));
%>

        <div class="container text-center">
            <img src="../Tienda_data/<%= product.getImage() %>" alt="" style="width: 400px; margin-bottom: 20px; border-radius: 10%;">
        </div>

    <div class="container">
        <div class="row  d-flex justify-content-center">

        <ul class="list-group col-2">
            <li class="list-group-item font-weight-bold">ID PRODUCTO</li>
            <li class="list-group-item font-weight-bold">NOMBRE</li>
            <li class="list-group-item font-weight-bold">DESCRIPCIÓN</li>
            <li class="list-group-item font-weight-bold">FORMATO ml.</li>
            <li class="list-group-item font-weight-bold">PRECIO euros</li>


        </ul>
        <ul class="list-group col-7">
              <li class="list-group-item"><%= product.getId_product() %></li>
              <li class="list-group-item"><%= product.getName_p() %></li>
              <li class="list-group-item"><%= product.getDescription_p() %></li>
              <li class="list-group-item"><%= product.getFormat_p() %></li>
              <li class="list-group-item"><%= product.getPrice() %></li>


        </ul>


        </div>
        <div class="container  d-flex justify-content-center" style="margin-top: 20px;">
         <a href="editProduct.jsp?id=<%= product.getId_product()%>&name_p=<%= product.getName_p()%>&description=<%= product.getDescription_p()%>&format=<%= product.getFormat_p()%>&price=<%= product.getPrice()%>&&image=<%= product.getImage()%>" class="btn btn-primary col-4">EDITAR PRODUCTO</a>
         </div>
        <div class="container  d-flex justify-content-center">
        <a href="products.jsp" type="button" class="btn btn-primary col-4" style="margin-top: 10px;">Volver a la lista de productos</a>
        </div>
    </div>
</main>

<%@include file= "includes/footer.jsp" %>