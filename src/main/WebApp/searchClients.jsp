<%@ page import="java.util.List" %>
<%@ page import="com.svalero.Domain.Client" %>

<%@ include file="includes/headerClients.jsp" %>
<main>
<br>

<!DOCTYPE html>
<html lang="es">
    <%@page contentType="text/html"%>
    <%@page pageEncoding="UTF-8"%>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">

<body>
<div class="container">

       <h1>Cliente</h1>
          <table class="table">
              <thread>
                <tr>
                    <th>ID</th>
                    <th>Nombre</th>
                    <th>Dirección</th>
                    <th>Teléfono</th>
                    <th>Detalles</th>
                </tr>
              </thread>

        <% for (Client client : (List<Client>)request.getAttribute("clients")) { %>
            <tr>
                <td><%= client.getId_client() %></td>
                <td><%= client.getFirstName() %> <%= client.getLastName() %></td>
                <td><%= client.getAddress() %></td>
                <td><%= client.getTelephone() %></td>
                <td><a href="detailsClient.jsp?id=<%= client.getId_client()%>" class="btn btn-sm btn-outline-secondary">VER DETALLES</a></td>
            </tr>
        <% } %>
        <div class="container  d-flex justify-content-center">
                <a href="clients.jsp" type="button" class="btn btn-primary col-4" style="margin-top: 30px; margin-bottom: 30px;">Volver a la lista de clientes</a>
        </div>

</body>
</table>
</div>
</html>

