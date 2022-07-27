package ri.kfupm.edu.sa.ceee_website.db.impl;

import ri.kfupm.edu.sa.ceee_website.db.bean.Project;
import ri.kfupm.edu.sa.ceee_website.db.dao.ProjectDao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import static ri.kfupm.edu.sa.ceee_website.db.Database.getConnection;

public class ProjectDaoImpl implements ProjectDao {

    @Override
    public List<Project> findForList(int page) {
        final String query = "SELECT id, title, service_area, client, duration_start, duration_end, contact_information FROM projects LIMIT 10 OFFSET ?";
        try (final PreparedStatement preparedStatement = getConnection().prepareStatement(query)) {
            preparedStatement.setInt(1, page * 10);
            final ResultSet set = preparedStatement.executeQuery();
            final List<Project> projects = new ArrayList<>(11);
            while (set.next()) {
                projects.add(new Project()
                        .setId(set.getString(1))
                        .setTitle(set.getString(2))
                        .setServiceArea(set.getDouble(3))
                        .setClient(set.getString(4))
                        .setDurationStart(set.getDate(5))
                        .setDurationEnd(set.getDate(6))
                        .setContactInformation(set.getString(7))
                );
            }
            return projects;
        } catch (Exception se) {
            se.printStackTrace();
        }
        return null;
    }

    @Override
    public Project findById(int id) {
        return null;
    }

    @Override
    public void save(Project project) {

    }

    @Override
    public void deleteById(int id) {

    }

}
