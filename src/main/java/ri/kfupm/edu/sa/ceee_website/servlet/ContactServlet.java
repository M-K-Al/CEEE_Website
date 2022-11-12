package ri.kfupm.edu.sa.ceee_website.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.jetbrains.annotations.NotNull;

import java.io.IOException;

@WebServlet(value = "/contact")
public class ContactServlet extends HttpServlet {
    @Override
    protected void doGet(@NotNull HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("contact/contact.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(@NotNull HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("received", true);
        req.getRequestDispatcher("contact/contact.jsp").forward(req, resp);
    }
}
