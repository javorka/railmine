json.extract! issue, :id, :name, :description, :estimation, :type, :state, :sprint_id, :project_id, :user_id, :created_at, :updated_at
json.url issue_url(issue, format: :json)
