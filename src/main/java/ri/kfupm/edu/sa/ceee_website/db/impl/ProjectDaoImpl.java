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
    public List<Project> findForList(int page, int count) {
        final String query = "SELECT id," +
                             " title," +
                             " service_area," +
                             " client," +
                             " duration_start," +
                             " duration_end," +
                             " contact_information" +
                             " FROM projects LIMIT ? OFFSET ?";
        try (final PreparedStatement preparedStatement = getConnection().prepareStatement(query)) {
            preparedStatement.setInt(1, count);
            preparedStatement.setInt(2, (page - 1) * count);
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
    public int count() {
        final String query = "SELECT count(*) from projects;";
        try (final PreparedStatement preparedStatement = getConnection().prepareStatement(query)) {
            final ResultSet set = preparedStatement.executeQuery();
            set.next();
            return set.getInt(1);
        } catch (Exception se) {
            se.printStackTrace();
        }
        return 0;
    }

    @Override
    public Project findById(String id) {
        final String query = "SELECT * FROM projects WHERE id = ?";
        try (final PreparedStatement preparedStatement = getConnection().prepareStatement(query)) {
            preparedStatement.setString(1, id);
            final ResultSet set = preparedStatement.executeQuery();
            set.next();
            return new Project()
                    .setId(set.getString(1))
                    .setTitle(set.getString(2))
                    .setServiceArea(set.getDouble(3))
                    .setClient(set.getString(4))
                    .setDurationStart(set.getDate(5))
                    .setDurationEnd(set.getDate(6))
                    .setContactInformation(set.getString(7))
                    .setDescription(set.getString(8))
                    .setAssessmentRecommendations((String[]) set.getArray(9).getArray());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public void save(Project project) {

    }

    @Override
    public void deleteById(int id) {

    }

}
