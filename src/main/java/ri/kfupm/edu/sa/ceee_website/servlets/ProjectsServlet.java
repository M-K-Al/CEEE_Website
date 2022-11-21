package ri.kfupm.edu.sa.ceee_website.servlets;

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
import java.util.List;

@WebServlet(value = "/projects")
public class ProjectsServlet extends HttpServlet {
    @Override
    public void doGet(@NotNull HttpServletRequest request,
                      HttpServletResponse response) throws ServletException, IOException {
        final ProjectDaoImpl projectDao = new ProjectDaoImpl();
        int pageNumber;
        int projectsCount = projectDao.count();
        final int maxPages = (int) Math.ceil(projectsCount / 10.0);
        try {
            final String stringPageNumber = request.getParameter("page");
            pageNumber = stringPageNumber == null ? 1 : Integer.parseInt(stringPageNumber);
            pageNumber = pageNumber <= 0 ? 1 : Math.min(pageNumber, maxPages);
        } catch (final NumberFormatException numberFormatException) {
            pageNumber = 1;
        }

        request.setAttribute("page", pageNumber);
//        request.setAttribute("projects", projectDao.findForList(pageNumber, 10));
        request.setAttribute("projects", List.of(
                new Project("1",
                        "test",
                        "rather unclear",
                        "Aramco",
                        new Date(1),
                        new Date(2),
                        "test",
                        "test",
                        new String[]{"test"}),
                new Project("2",
                        "test",
                        "rather unclear",
                        "Aramco",
                        new Date(1),
                        new Date(2),
                        "test",
                        "test",
                        new String[]{"test"})
        ));
        request.setAttribute("maxPages", maxPages);
        request.setAttribute("projectsCount", projectsCount);

        int paginationSelected;

        if (pageNumber < 4) {
            paginationSelected = pageNumber;
            request.setAttribute("paginationSecondButton", 2);
            request.setAttribute("paginationThirdButton", 3);
            request.setAttribute("paginationForthButton", "...");
        } else if (pageNumber < maxPages - 2) {
            paginationSelected = 3;
            request.setAttribute("paginationSecondButton", "...");
            request.setAttribute("paginationThirdButton", pageNumber);
            request.setAttribute("paginationForthButton", "...");
        } else {
            paginationSelected = 5 - (maxPages - pageNumber);
            request.setAttribute("paginationSecondButton", "...");
            request.setAttribute("paginationThirdButton", maxPages - 2);
            request.setAttribute("paginationForthButton", maxPages - 1);
        }

        request.setAttribute("paginationSelected", paginationSelected);

        getServletContext().getRequestDispatcher("/projects/projects.jsp").forward(request, response);
    }
}