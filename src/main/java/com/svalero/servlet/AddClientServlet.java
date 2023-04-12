package com.svalero.servlet;

import com.svalero.DAO.ClientDAO2;
import com.svalero.DAO.Database;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Path;
import java.time.LocalDate;
import java.util.UUID;

@WebServlet("/addClient")
public class AddClientServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");



        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String dni = request.getParameter("dni");
        String address = request.getParameter("address");
        String city = request.getParameter("city");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        int telephone = Integer.parseInt(request.getParameter("telephone"));

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");
            Database.connect();
            Database.jdbi.withExtension(ClientDAO2.class, dao -> {
                dao.addClient(firstName, lastName, dni, address, city, email, password, telephone);
                return null;
            });
            String url = "clientOk.jsp";
            response.sendRedirect(url);
        } catch (ClassNotFoundException cnfe) {
            cnfe.printStackTrace();
        }
    }
}
