package ri.kfupm.edu.sa.ceee_website.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.jetbrains.annotations.NotNull;
import ri.kfupm.edu.sa.ceee_website.db.impl.ProjectDaoImpl;

import java.io.IOException;

@WebServlet(value = "/projects")
public class ProjectsServlet extends HttpServlet {
    @Override
    public void doGet(@NotNull HttpServletRequest request,
                      HttpServletResponse response) throws ServletException, IOException {
        int pageNumber;
        try {
            final String stringPageNumber = request.getParameter("page");
            pageNumber = stringPageNumber == null ? 1 : Integer.parseInt(stringPageNumber);
            if (pageNumber <= 0) pageNumber = 1;
        } catch (final Exception e) {
            throw e;
        }
        request.setAttribute("page", pageNumber);
        request.setAttribute("projects", new ProjectDaoImpl().findForList(pageNumber));
        getServletContext().getRequestDispatcher("/projects.jsp").forward(request, response);
    }
}