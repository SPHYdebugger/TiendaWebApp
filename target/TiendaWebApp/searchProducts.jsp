<%@ page import="java.util.List" %>
<%@ page import="com.svalero.Domain.Product" %>

<%@ include file="includes/headerProducts.jsp" %>
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
                    <th>Tamaño</th>
                    <th>Precio</th>
                    <th>DETALLES</th>
                </tr>
              </thread>

        <% for (Product product : (List<Product>)request.getAttribute("products")) { %>
            <tr>
                <td><%= product.getId_product() %></td>
                <td><%= product.getName_p() %></td>
                <td><%= product.getFormat_p() %></td>
                <td><%= product.getPrice() %></td>
                <td><a href="detailsProduct.jsp?id=<%= product.getId_product()%>" class="btn btn-sm btn-outline-secondary">VER DETALLES</a></td>
            </tr>
        <% } %>
        <div class="container  d-flex justify-content-center">
                <a href="clients.jsp" type="button" class="btn btn-primary col-4" style="margin-top: 30px; margin-bottom: 30px;">Volver a la lista de clientes</a>
        </div>

</body>
</table>
</div>
</html>

