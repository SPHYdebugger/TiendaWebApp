<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<%@ page import="com.svalero.DAO.Database" %>

<%@ page import="com.svalero.Domain.Product" %>
<%@ page import="com.svalero.DAO.ProductDAO" %>

<%@ page import="java.util.List" %>


<%@include file="includes/headerIndex.jsp"%>
<main>

  <section class="py-5 text-center container">
    <div class="row py-lg-5">
      <div class="col-lg-6 col-md-8 mx-auto">
        <h1 class="fw-light">BIENVENIDO A LA ZONA DE PRODUCTOS</h1>
        <p class="lead text-body-secondary">Aqui puedes ver los productos disponibles</p>
        <form action="searchProduct" method="post" class="form-inline mx-auto" style="justify-content: center;">
          <input class="form-control mr-sm-2" name="search" method="post" type="text" id="search" placeholder="Buscar un producto" aria-label="Search">
          <button class="btn btn-outline-primary my-2 my-sm-0" type="submit">BUSCAR</button>
        </form>
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
                    List<Product> productList = Database.jdbi.withExtension(ProductDAO.class, ProductDAO::getProducts);
                        for (Product product:
                             productList) {
                        int idc = product.getId_product();
                  %>

          <div class="col">
            <div class="card shadow-sm h-500">
              <img src="../Tienda_data/<%= product.getImage() %>" alt="" style="">
              <div class="card-body">
              <p class="card-text">ID PRODUCTO  <%= product.getId_product() %></p>

                <b class="card-text"><%= product.getName_p() %></b>
                <p class="card-text"><%= product.getFormat_p() %> ml.</p>
                <div class="d-flex justify-content-between align-items-center">
                  <div class="btn-group">

                    <a href="detailsProduct.jsp?id=<%= product.getId_product()%>" class="btn btn-sm btn-outline-secondary">VER DETALLES</a>
                  </div>
                  <small class="text-body-secondary"><%= product.getPrice() %> Euros </small>
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