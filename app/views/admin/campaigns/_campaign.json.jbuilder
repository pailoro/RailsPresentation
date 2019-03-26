json.extract! campaign, :id, :name, :body, :link, :image, :expiration, :active, :created_at, :updated_at
json.url campaign_url(campaign, format: :json)
