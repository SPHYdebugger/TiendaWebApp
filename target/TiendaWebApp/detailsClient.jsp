<%@ page import="com.svalero.DAO.Database" %>
<%@ page import="com.svalero.DAO.ClientDAO2" %>
<%@ page import="com.svalero.Domain.Client" %>


<%@ page import="java.util.List" %>


<%@include file="includes/header.jsp"%>

<main>

  <section class="py-5 text-center container">
    <div class="row py-lg-5">
      <div class="col-lg-6 col-md-8 mx-auto">
        <h1 class="fw-light">BIENVENIDO A LA ZONA DE CLIENTES</h1>
        <p class="lead text-body-secondary">Por favor elige una de las siguientes opciones</p>
        <p>
          <a href="#" class="btn btn-primary my-2">Registrar un cliente</a>
          <a href="#" class="btn btn-primary my-2">Modificar un cliente</a>
          <a href="#" class="btn btn-primary my-2">Borrar un cliente</a>
          <a href="#" class="btn btn-primary my-2">Buscar un cliente</a>
        </p>
      </div>
    </div>
  </section>

  <hr class="featurette-divider">
    <h2 style="text-align: center;">DETALLE DEL CLIENTE</h2>
<%

    int clientId = Integer.parseInt(request.getParameter("id"));
        Class.forName("com.mysql.cj.jdbc.Driver");
        Database.connect();
        Client client = Database.jdbi.withExtension(ClientDAO2.class, dao -> dao.searchClient(clientId));
%>

    <div class="container">
        <div class="row  d-flex justify-content-center">

        <ul class="list-group col-md-2">
            <li class="list-group-item font-weight-bold">NOMBRE</li>
            <li class="list-group-item font-weight-bold">APELLIDOS</li>
            <li class="list-group-item font-weight-bold">DNI</li>
            <li class="list-group-item font-weight-bold">DIRECCIÓN</li>
            <li class="list-group-item font-weight-bold">CIUDAD</li>
            <li class="list-group-item font-weight-bold">MAIL</li>
            <li class="list-group-item font-weight-bold">CONTRASEÑA</li>
            <li class="list-group-item font-weight-bold">TELÉFONO</li>

        </ul>
        <ul class="list-group col-6">
              <li class="list-group-item"><%= client.getFirstName() %></li>
              <li class="list-group-item"><%= client.getLastName() %></li>
              <li class="list-group-item"><%= client.getDNI() %></li>
              <li class="list-group-item"><%= client.getAddress() %></li>
              <li class="list-group-item"><%= client.getCity() %></li>
              <li class="list-group-item"><%= client.getEmail() %></li>
              <li class="list-group-item"><%= client.getPassword() %></li>
              <li class="list-group-item"><%= client.getTelephone() %></li>

        </ul>

        </div>
        <div class="container  d-flex justify-content-center">
        <a href="clients.jsp" type="button" class="btn btn-primary col-4" style="margin-top: 10px;">Volver a la lista de clientes</a>
        </div>
    </div>
</main>

<%@include file= "includes/footer.jsp" %>