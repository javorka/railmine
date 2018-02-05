json.extract! work_entry, :id, :hours, :user_id, :issue_id, :created_at, :updated_at
json.url work_entry_url(work_entry, format: :json)
