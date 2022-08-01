package ri.kfupm.edu.sa.ceee_website.db.bean;

import java.sql.Date;
import java.util.Arrays;

public class Project {

    private String id;
    private String title;
    private String serviceArea;
    private String client;
    private Date durationStart;
    private Date durationEnd;
    private String contactInformation;
    private String description;
    private String[] assessmentRecommendations;

    public Project() {
    }

    public Project(String id,
                   String title,
                   String serviceArea,
                   String client,
                   Date durationStart,
                   Date durationEnd,
                   String contactInformation,
                   String description,
                   String[] assessmentRecommendations) {
        this.id = id;
        this.title = title;
        this.serviceArea = serviceArea;
        this.client = client;
        this.durationStart = durationStart;
        this.durationEnd = durationEnd;
        this.contactInformation = contactInformation;
        this.description = description;
        this.assessmentRecommendations = assessmentRecommendations;
    }

    public String getId() {
        return id;
    }

    public Project setId(String id) {
        this.id = id;
        return this;
    }

    public String getTitle() {
        return title;
    }

    public Project setTitle(String title) {
        this.title = title;
        return this;
    }

    public String getServiceArea() {
        return serviceArea;
    }

    public Project setServiceArea(String serviceArea) {
        this.serviceArea = serviceArea;
        return this;
    }

    public String getClient() {
        return client;
    }

    public Project setClient(String client) {
        this.client = client;
        return this;
    }

    public Date getDurationStart() {
        return durationStart;
    }

    public Project setDurationStart(Date durationStart) {
        this.durationStart = durationStart;
        return this;
    }

    public Date getDurationEnd() {
        return durationEnd;
    }

    public Project setDurationEnd(Date durationEnd) {
        this.durationEnd = durationEnd;
        return this;
    }

    public String getContactInformation() {
        return contactInformation;
    }

    public Project setContactInformation(String contactInformation) {
        this.contactInformation = contactInformation;
        return this;
    }

    public String getDescription() {
        return description;
    }

    public Project setDescription(String description) {
        this.description = description;
        return this;
    }

    public String[] getAssessmentRecommendations() {
        return assessmentRecommendations;
    }

    public Project setAssessmentRecommendations(String[] assessmentRecommendations) {
        this.assessmentRecommendations = assessmentRecommendations;
        return this;
    }

    @Override
    public String toString() {
        return "Project{" +
               "id='" + id + '\'' +
               ", title='" + title + '\'' +
               ", serviceArea=" + serviceArea +
               ", client='" + client + '\'' +
               ", durationStart=" + durationStart +
               ", durationEnd=" + durationEnd +
               ", contactInformation='" + contactInformation + '\'' +
               ", description='" + description + '\'' +
               ", assessmentRecommendation=" + Arrays.toString(assessmentRecommendations) +
               '}';
    }
}
