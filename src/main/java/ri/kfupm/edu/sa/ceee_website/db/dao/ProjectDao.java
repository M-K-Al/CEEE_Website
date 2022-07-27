package ri.kfupm.edu.sa.ceee_website.db.dao;

import ri.kfupm.edu.sa.ceee_website.db.bean.Project;

import java.util.List;

public interface ProjectDao {

    List<Project> findForList(int page);

    Project findById(int id);

    void save(Project project);

    void deleteById(int id);

}