<<<<<<< HEAD
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

=======
>>>>>>> 2b3e99bc3d9effd93a9632b89a122ebcaf05f8e6
<%@ page import="com.svalero.DAO.Database" %>
<%@ page import="com.svalero.DAO.Buy_DAO" %>
<%@ page import="com.svalero.Domain.Buy" %>


<%@ page import="java.util.List" %>


<<<<<<< HEAD
<%@include file="includes/headerBuys.jsp"%>
=======
<%@include file="includes/header.jsp"%>
>>>>>>> 2b3e99bc3d9effd93a9632b89a122ebcaf05f8e6
<main>

  <section class="py-5 text-center container">
    <div class="row py-lg-5">
      <div class="col-lg-6 col-md-8 mx-auto">
        <h1 class="fw-light">BIENVENIDO A LA ZONA DE COMPRAS</h1>
        <p class="lead text-body-secondary">Por favor elige una de las siguientes opciones</p>
        <p>
          <a href="registerClient.jsp" class="btn btn-primary my-2">Registrar una compra</a>

        </p>
      </div>
    </div>
  </section>


  <hr class="featurette-divider">
    <h2 style="text-align: center;">REGISTRAR UNA COMPRA</h2>


    <div class="container col-6">
    <form action="addBuy" method="post" enctype= "multipart/form-data">
      <div class="mb-3">
        <label for="id_client" class="form-label">ID CLIENTE</label>
        <input type="text" class="form-control" id="id_client" name="id_client">
      </div>
      <div class="mb-3">
         <label for="id_product" class="form-label">ID PRODUCTO</label>
         <input type="text" class="form-control" id="id_product" name="id_product">
      </div>
      <div class="mb-3">
         <label for="date" class="form-label">FECHA DE COMPRA</label>
         <input type="date" class="form-control" id="date" name="date">
      </div>

        <div class="container  d-flex justify-content-center">
            <button type="submit" class="btn btn-primary">Confirmar el registro</button>
        </div>
    </form>

        <div class="container  d-flex justify-content-center">
        <a href="buys.jsp" type="button" class="btn btn-primary col-4" style="margin-top: 20px;">Volver a la lista de compras</a>
        </div>
    </div>
</main>

<%@include file= "includes/footer.jsp" %>