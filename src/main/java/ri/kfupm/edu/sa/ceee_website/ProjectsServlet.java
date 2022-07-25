package ri.kfupm.edu.sa.ceee_website;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.jetbrains.annotations.NotNull;

import java.io.IOException;

@WebServlet("/projects")
public class ProjectsServlet extends HttpServlet {
    @Override
    public void doGet(@NotNull HttpServletRequest request,
                      HttpServletResponse response) throws ServletException, IOException {
        System.out.println("Hello, World!");
        String[] var = new String[]{"Number 1", "Number 2", "Number 3", "Number 4", "Number 5", "Number 6"};
        request.setAttribute("variables", var);
        getServletContext().getRequestDispatcher("/projects.jsp").forward(request, response);
    }
}