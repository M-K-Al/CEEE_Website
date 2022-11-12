package ri.kfupm.edu.sa.ceee_website.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.jetbrains.annotations.NotNull;
import ri.kfupm.edu.sa.ceee_website.db.bean.Project;
import ri.kfupm.edu.sa.ceee_website.db.impl.ProjectDaoImpl;

import java.io.IOException;
import java.sql.Date;

@WebServlet(value = "/project")
public class ProjectViewServlet extends HttpServlet {
    @Override
    protected void doGet(@NotNull HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        final ProjectDaoImpl projectDao = new ProjectDaoImpl();
//        request.setAttribute("project", projectDao.findById(request.getParameter("id")));
        request.setAttribute("project", new Project("1",
                "test",
                "rather unclear",
                "Aramco",
                new Date(1),
                new Date(2),
                "test",
                "test",
                new String[]{"test"}));
        getServletContext().getRequestDispatcher("/projects/project-view.jsp").forward(request, response);
    }
}
