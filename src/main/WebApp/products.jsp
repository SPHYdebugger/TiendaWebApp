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
    <h2 style="text-align: center;">LISTA DE PRODUCTOS</h2>

  <div class="album py-5 bg-body-tertiary">
    <div class="container">

      <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3" style="justify-content: center;">

                <%
                  Class.forName("com.mysql.cj.jdbc.Driver");
                  Database.connect();
                  List<Product> productsList = Database.jdbi.withExtension(ProductDAO.class, ProductDAO::getProducts);
                      for (Product product:
                           productsList) {
                %>

        <div class="col">
          <div class="card shadow-sm">
            <img src="resources/higiene-y-cuidado-personal.jpg" alt="" style="">
            <div class="card-body">
              <b class="card-text"><%= product.getName_p() %></b>
              <p class="card-text"><%= product.getDescription_p() %></p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary">EDITAR</button>
                  <button type="button" class="btn btn-sm btn-outline-secondary">BORRAR</button>
                </div>
                <small class="text-body-secondary"><%= product.getPrice() %> €</small>
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