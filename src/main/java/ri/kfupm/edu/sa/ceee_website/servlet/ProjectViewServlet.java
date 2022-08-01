package ri.kfupm.edu.sa.ceee_website.servlet;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import org.jetbrains.annotations.NotNull;
import ri.kfupm.edu.sa.ceee_website.db.impl.ProjectDaoImpl;

import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;

@WebServlet(value = "/project")
public class ProjectViewServlet extends HttpServlet {
    @Override
    protected void doGet(@NotNull HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        final ProjectDaoImpl projectDao = new ProjectDaoImpl();
        request.setAttribute("project", projectDao.findById(request.getParameter("id")));
        getServletContext().getRequestDispatcher("/projects/project-view.jsp").forward(request, response);
    }
}
