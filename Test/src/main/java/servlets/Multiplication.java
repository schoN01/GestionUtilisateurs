package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/table")
public class Multiplication extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String nombre = request.getParameter("nombre");
        int table = Integer.parseInt(nombre);
        
    	PrintWriter out = response.getWriter();

        out.print("<h1>Table de " + nombre + "</h1>");

        for (int i = 1; i<=10; i++)
        	
        out.close();
    }
}