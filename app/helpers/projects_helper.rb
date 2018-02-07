module ProjectsHelper
  def get_issues(project, sprint_id)
    return project.issues if sprint_id.nil?
    project.sprints.select { |s| sprint_id.to_i == s.id }.first.issues
  end
end
