package ri.kfupm.edu.sa.ceee_website.servlet;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import ri.kfupm.edu.sa.ceee_website.db.impl.ProjectDaoImpl;

import java.io.IOException;

@WebServlet(value = "/project")
public class ProjectViewServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        final ProjectDaoImpl projectDao = new ProjectDaoImpl();
        request.setAttribute("project", projectDao.findById("SA00066"));
        getServletContext().getRequestDispatcher("/projects/project-view.jsp").forward(request, response);
    }
}
