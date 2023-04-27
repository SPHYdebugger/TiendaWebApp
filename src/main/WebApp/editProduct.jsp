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
          <a href="registerProduct.jsp" class="btn btn-primary my-2">Registrar un producto</a>

        </p>
      </div>
    </div>
  </section>

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




        <div class="container  d-flex justify-content-center">
            <button type="submit" class="btn btn-primary">Confirmar el registro</button>
        </div>
    </form>

        <div class="container  d-flex justify-content-center">
        <a href="products.jsp" type="button" class="btn btn-primary col-4" style="margin-top: 20px;">Volver a la lista de productos</a>
        </div>
    </div>
</main>

<%@include file= "includes/footer.jsp" %>