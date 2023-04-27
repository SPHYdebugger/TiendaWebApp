package com.svalero.servlet;

import com.svalero.DAO.ClientDAO2;
import com.svalero.DAO.Database;
import com.svalero.Domain.Client;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;





import java.io.IOException;
import java.io.PrintWriter;

import java.util.List;


@WebServlet("/searchClient")
@MultipartConfig

public class SearchClientServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");



        String firstName = "%" + request.getParameter("search") + "%";
        String lastName = "%" + request.getParameter("search") + "%";
        String DNI = "%" + request.getParameter("search") + "%";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Database.connect();


            List<Client> clients = Database.jdbi.withExtension(ClientDAO2.class, dao -> {
                return dao.searchClientByFirstnameOrLastnameOrDni(firstName, lastName, DNI);
            });



            request.setAttribute("clients", clients);
            request.getRequestDispatcher("searchClients.jsp").forward(request, response);

        } catch (ClassNotFoundException cnfe) {
            cnfe.printStackTrace();
        }
    }
}
