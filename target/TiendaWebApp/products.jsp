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
          <a href="registerProduct.jsp" class="btn btn-primary my-2">Registrar un producto</a>
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
                    <a href="editProduct.jsp?id=<%= product.getId_product()%>&name_p=<%= product.getName_p()%>&description=<%= product.getDescription_p()%>&format=<%= product.getFormat_p()%>&price=<%= product.getPrice()%>&&image=<%= product.getImage()%>" class="btn btn-sm btn-outline-secondary">EDITAR</a>
                    <button type="button" class="btn btn-sm btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#exampleModal<%= idc%>">BORRAR</button>
                    <a href="detailsProduct.jsp?id=<%= product.getId_product()%>" class="btn btn-sm btn-outline-secondary">VER DETALLES</a>
                  </div>
                  <small class="text-body-secondary"><%= product.getPrice() %> Euros </small>
                </div>
              </div>

            </div>
          </div>
          <div class="modal fade" id="exampleModal<%= idc %>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalLabel">CONFIRMACION DE BORRADO</h5>
                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                  ¿Seguro que desea borrar el producto?
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                  <a href="deleteProduct?id=<%= product.getId_product()%>" type="button" class="btn btn-primary" >Aceptar</a>
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