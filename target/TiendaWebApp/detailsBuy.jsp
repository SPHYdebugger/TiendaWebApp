<%@ page import="com.svalero.DAO.Database" %>
<%@ page import="com.svalero.DAO.Buy_DAO" %>
<%@ page import="com.svalero.Domain.Buy" %>


<%@ page import="java.util.List" %>


<%@include file="includes/header.jsp"%>
<main>

  <section class="py-5 text-center container">
    <div class="row py-lg-5">
      <div class="col-lg-6 col-md-8 mx-auto">
        <h1 class="fw-light">BIENVENIDO A LA ZONA DE COMPRAS</h1>
        <p class="lead text-body-secondary">Por favor elige una de las siguientes opciones</p>
        <p>
          <a href="registerBuy.jsp" class="btn btn-primary my-2">Registrar una compra</a>

        </p>
      </div>
    </div>
  </section>


  <hr class="featurette-divider">
    <h2 style="text-align: center;">DETALLE DE LA COMPRA</h2>
<%

    int buyId = Integer.parseInt(request.getParameter("id"));
        Class.forName("com.mysql.cj.jdbc.Driver");
        Database.connect();
        Buy buy = Database.jdbi.withExtension(Buy_DAO.class, dao -> dao.searchBuy(buyId));
%>



    <div class="container">
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
        <a href="buys.jsp" type="button" class="btn btn-primary col-4" style="margin-top: 10px;">Volver a la lista de compras</a>
        </div>
    </div>
</main>

<%@include file= "includes/footer.jsp" %>