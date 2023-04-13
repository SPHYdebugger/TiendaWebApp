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
        <p class="lead text-body-secondary">Aqui puedes ver todos los datos de los clientes existentes o registrar uno nuevo</p>
        <p>
          <a href="registerClient.jsp" class="btn btn-primary my-2">Registrar un cliente</a>

        </p>
      </div>
    </div>
  </section>

  <hr class="featurette-divider">
    <h2 style="text-align: center;">LISTA DE CLIENTES</h2>

  <div class="album py-5 bg-body-tertiary">
    <div class="container">

      <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3" style="justify-content: center;">

                <%
                  Class.forName("com.mysql.cj.jdbc.Driver");
                  Database.connect();
                  List<Client> clientsList = Database.jdbi.withExtension(ClientDAO2.class, ClientDAO2::getClients);
                      for (Client client:
                           clientsList) {
                      int idc = client.getId_client();
                %>

        <div class="col">
          <div class="card shadow-lg">
            <img src="../Tienda_data/<%= client.getImage() %>" alt="" style="">
            <div class="card-body">
              <b class="card-text"><%= client.getFirstName() %></b>
              <p class="card-text"><%= client.getLastName() %></p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <a href="editClient.jsp?id=<%= client.getId_client()%>&firstName=<%= client.getFirstName()%>&lastName=<%= client.getLastName()%>&dni=<%= client.getDni()%>&address=<%= client.getAddress()%>&city=<%= client.getCity()%>&email=<%= client.getEmail()%>&password=<%= client.getPassword()%>&telephone=<%= client.getTelephone()%>&image=<%= client.getImage()%>" class="btn btn-sm btn-outline-secondary">EDITAR</a>
                  <button type="button" class="btn btn-sm btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#exampleModal<%= idc%>">BORRAR</button>
                  <a href="detailsClient.jsp?id=<%= client.getId_client()%>" class="btn btn-sm btn-outline-secondary">VER DETALLES</a>
                </div>
                <small class="text-body-secondary"><%= client.getDni() %> </small>
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
                ¿Seguro que desea borrar el cliente?
                Todas las compras asociadas a él también serán borradas.
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                <a href="deleteClient?id=<%= client.getId_client()%>" type="button" class="btn btn-primary" >Aceptar</a>
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