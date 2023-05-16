<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<%@ page import="com.svalero.DAO.Database" %>
<%@ page import="com.svalero.DAO.ClientDAO2" %>
<%@ page import="com.svalero.Domain.Client" %>


<%@ page import="java.util.List" %>


<%@include file="includes/headerIndex.jsp"%>
<main>

  <section class="py-5 text-center container">
    <div class="row py-lg-5">
      <div class="col-lg-6 col-md-8 mx-auto">
        <h1 class="fw-light">BIENVENIDO A LA ZONA DE CLIENTES</h1>
        <p class="lead text-body-secondary">Aqui puedes ver todos los datos de los clientes existentes</p>
        <form action="searchClient" method="post" class="form-inline mx-auto" style="justify-content: center;">
          <input class="form-control mr-sm-2" name="search" method="post" type="text" id="search" placeholder="Buscar un cliente" aria-label="Search">
          <button class="btn btn-outline-primary my-2 my-sm-0" type="submit">BUSCAR</button>
        </form>
      </div>
    </div>
  </section>

  <hr class="featurette-divider">
    <h2 style="text-align: center;">LISTA DE CLIENTES</h2>

  <div class="album py-5 bg-body-tertiary">
    <div class="container">

     <div class="row row-cols-1 row-cols-sm-1 row-cols-md-2 row-cols-lg-3 g-4" style="justify-content: center;">

                <%
                  Class.forName("com.mysql.cj.jdbc.Driver");
                  Database.connect();
                  List<Client> clientsList = Database.jdbi.withExtension(ClientDAO2.class, ClientDAO2::getClients);
                      for (Client client:
                           clientsList) {
                      int idc = client.getId_client();
                %>

        <div class="col">
          <div class="card shadow-md">
            <img src="../Tienda_data/<%= client.getImage() %>" alt="" style="">
            <div class="card-body">
              <h5 class="card-title fw-bold"><%= client.getFirstName() %></h5>
              <p class="card-text"><%= client.getLastName() %></p>
              <p class="text-body-secondary">DNI <%= client.getDni() %> </p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">

                  <a href="detailsClient.jsp?id=<%= client.getId_client()%>" class="btn btn-sm btn-outline-secondary">VER DETALLES</a>
                </div>

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