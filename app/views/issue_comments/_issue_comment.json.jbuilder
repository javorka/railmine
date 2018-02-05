json.extract! issue_comment, :id, :comment, :user_id, :issue_id, :created_at, :updated_at
json.url issue_comment_url(issue_comment, format: :json)
