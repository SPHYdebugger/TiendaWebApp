<%@ page import="com.svalero.DAO.Database" %>

<%@ page import="com.svalero.Domain.Product" %>
<%@ page import="com.svalero.DAO.ProductDAO" %>

<%@ page import="java.util.List" %>


<%@include file="includes/header.jsp"%>
<main>

  <section class="py-5 text-center container">
    <div class="row py-lg-5">
      <div class="col-lg-6 col-md-8 mx-auto">
        <h1 class="fw-light">BIENVENIDO A LA ZONA DE PRODUCTOS</h1>
        <p class="lead text-body-secondary">Por favor elige una de las siguientes opciones</p>
        <p>
          <a href="#" class="btn btn-primary my-2">Registrar un producto</a>
          <a href="#" class="btn btn-primary my-2">Modificar un producto</a>
          <a href="#" class="btn btn-primary my-2">Borrar un producto</a>
          <a href="#" class="btn btn-primary my-2">Buscar un producto</a>
        </p>
      </div>
    </div>
  </section>

  <hr class="featurette-divider">
    <h2 style="text-align: center;">REGISTRO DE PRODUCTO</h2>


    <div class="container col-6">
    <form action="addProduct" method="post" enctype= "multipart/form-data">
      <div class="mb-3">
        <label for="name" class="form-label">NOMBRE</label>
        <input type="text" class="form-control" id="name" name="name">
      </div>
      <div class="mb-3">
        <label for="description" class="form-label">DESCRIPCIÓN</label>
        <input type="text" class="form-control" id="description" name="description">
      </div>
      <div class="mb-3">
         <label for="format" class="form-label">DNI</label>
         <input type="text" class="form-control" id="format" name="format">
      </div>
      <div class="mb-3">
          <label for="price" class="form-label">PRECIO</label>
          <input type="text" class="form-control" id="price" name="price">

      <div style="margin-bottom: 20px;">
            <label for="image" class="form-label">Imagen</label>
            <input type="file" class="form-control" id="image" name="image">
      </div>
        <div class="container  d-flex justify-content-center">
            <button type="submit" class="btn btn-primary">Confirmar el registro</button>
        </div>
    </form>

        <div class="container  d-flex justify-content-center">
        <a href="products.jsp" type="button" class="btn btn-primary col-4" style="margin-top: 20px;">Volver a la lista de clientes</a>
        </div>
    </div>
</main>

<%@include file= "includes/footer.jsp" %>