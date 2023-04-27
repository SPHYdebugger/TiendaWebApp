package com.svalero.servlet;

import com.svalero.DAO.Buy_DAO;
import com.svalero.DAO.Database;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;

@WebServlet("/addBuy")
@MultipartConfig
public class AddBuyServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();


        int id_client = Integer.parseInt(request.getParameter("id_client"));
        int id_product = Integer.parseInt(request.getParameter("id_product"));
        String date = request.getParameter("date");
        LocalDate localDate = LocalDate.parse(date);

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");
            Database.connect();
            Database.jdbi.withExtension(Buy_DAO.class, dao -> {
                dao.addBuy(id_client, id_product, localDate);
                return null;
            });
            String url = "buyOk.jsp";
            response.sendRedirect(url);
        } catch (ClassNotFoundException cnfe) {
            cnfe.printStackTrace();
        }
    }
}
