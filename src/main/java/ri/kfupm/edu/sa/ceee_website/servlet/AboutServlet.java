package ri.kfupm.edu.sa.ceee_website.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.jetbrains.annotations.NotNull;

import java.io.IOException;

@WebServlet(value = "/about")
public class AboutServlet extends HttpServlet {
    @Override
    protected void doGet(@NotNull HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("about/about.jsp").forward(request, response);
    }
}
