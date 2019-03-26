json.extract! notification, :id, :name, :body, :delivery, :created_at, :updated_at
json.url notification_url(notification, format: :json)
