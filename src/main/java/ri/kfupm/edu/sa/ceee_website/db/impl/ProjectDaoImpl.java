package ri.kfupm.edu.sa.ceee_website.db.impl;

import ri.kfupm.edu.sa.ceee_website.db.bean.Project;
import ri.kfupm.edu.sa.ceee_website.db.dao.ProjectDao;

import java.awt.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import static ri.kfupm.edu.sa.ceee_website.db.Database.getConnection;

public class ProjectDaoImpl implements ProjectDao {

    @Override
    public List<Project> findAll() {
        final String query = "SELECT * FROM projects";
        try (final PreparedStatement preparedStatement = getConnection().prepareStatement(query)) {
            preparedStatement.setString(1, id);
            final ResultSet set = preparedStatement.executeQuery();
            set.next();
            return new Player(set.getString(1),
                    set.getTimestamp(2),
                    set.getInt(3),
                    set.getInt(4),
                    set.getInt(5),
                    Color.decode(set.getString(7)),
                    set.getTimestamp(6),
                    set.getInt(8),
                    set.getInt(9)
            );
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
