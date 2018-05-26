json.extract! subscription, :id, :uuid, :type, :description, :created_at, :updated_at
json.url subscription_url(subscription, format: :json)
