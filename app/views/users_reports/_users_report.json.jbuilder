json.extract! users_report, :id, :user_id, :local, :lat, :long, :canal, :created_at, :updated_at
json.url users_report_url(users_report, format: :json)
