json.extract! project, :id, :name, :description, :status, :team_id, :created_at, :updated_at
json.url project_url(project, format: :json)
