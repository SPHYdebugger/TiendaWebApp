<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<%@ page import="com.svalero.DAO.Database" %>
<%@ page import="com.svalero.DAO.Buy_DAO" %>
<%@ page import="com.svalero.Domain.Buy" %>


<%@ page import="java.util.List" %>


<%@include file="includes/headerIndex.jsp"%>
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
    <h2 style="text-align: center;">LISTA DE COMPRAS</h2>

  <div class="album py-5 bg-body-tertiary">
    <div class="container">

      <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3" style="justify-content: center;">

                <%
                  Class.forName("com.mysql.cj.jdbc.Driver");
                  Database.connect();
                  List<Buy> buyList = Database.jdbi.withExtension(Buy_DAO.class, Buy_DAO::getBuy);
                      for (Buy buy:
                           buyList) {
                  int idc = buy.getId_buy();
                %>

        <div class="col">
          <div class="card shadow-sm h-500">
            <div class="card-body">
              <b class="card-text">ID DE COMPRA = <%= buy.getId_buy() %></b>
              <p class="card-text">CLIENTE = <%= buy.getClient().getFirstName() + " " +  buy.getClient().getLastName()%></p>
              <p class="card-text">PRODUCTO = <%= buy.getProduct().getName_p() %></p>
              <p class="card-text">PRECIO = <%= buy.getProduct().getPrice()%>  Euros</p>
              <p class="card-text">FECHA DE COMPRA = <%= buy.getBuyDate() %></p>

                  <a href="detailsBuy.jsp?id=<%= buy.getId_buy()%>" class="btn btn-sm btn-outline-secondary">VER DETALLES</a>
                </div>
                <small class="text-body-secondary"> </small>
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