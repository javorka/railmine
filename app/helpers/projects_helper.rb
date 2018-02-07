module ProjectsHelper
  def get_issues(project, sprint_id)
    return project.issues if sprint_id.nil?
    project.sprints.select { |s| sprint_id.to_i == s.id }.first.issues
  end

  def project_status_options
    [['Active', 0], ['Inactive', 1], ['Postponed', 2]]
  end

  def resolve_project_status_id(status)
    return 0 if status.nil?
    map = { acitve: 0, inactive: 1, postponed: 2 }
    map[status.to_sym]
  end
end
