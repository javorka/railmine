module IssuesHelper
  def issue_type_options
    [['BUG', 0], ['FEATURE', 1], ['TASK', 2]]
  end

  def issue_state_options
    [['TODO', 0], ['In Progress', 1], ['To Test', 2], ['Testing', 3], ['Done', 4]]
  end

  def resolve_issue_type_id(issue_type)
    map = { bug: 0, feature: 1, task: 2 }
    map[issue_type.to_sym]
  end

  def resolve_issue_state_id(issue_state)
    map = { todo: 0, in_progress: 1, to_test: 2, testing: 3, done: 4 }
    map[issue_state.to_sym]
  end

  def get_issues(project, sprint_id)
    return project.issues if sprint_id.nil?
    project.sprints.select { |s| sprint_id.to_i == s.id }.first.issues
  end

end
