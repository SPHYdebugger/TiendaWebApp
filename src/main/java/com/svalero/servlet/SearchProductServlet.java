package com.svalero.servlet;

import com.svalero.DAO.ClientDAO2;
import com.svalero.DAO.Database;
import com.svalero.DAO.ProductDAO;
import com.svalero.Domain.Client;
import com.svalero.Domain.Product;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;


@WebServlet("/searchProduct")
@MultipartConfig

public class SearchProductServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");



        String nameP = "%" + request.getParameter("search") + "%";
        String descriptionP = "%" + request.getParameter("search") + "%";


        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Database.connect();


            List<Product> products = Database.jdbi.withExtension(ProductDAO.class, dao -> {
                return dao.searchProductByNameOrDescription(nameP,descriptionP);
            });



            request.setAttribute("products", products);
            request.getRequestDispatcher("searchProducts.jsp").forward(request, response);

        } catch (ClassNotFoundException cnfe) {
            cnfe.printStackTrace();
        }
    }
}
