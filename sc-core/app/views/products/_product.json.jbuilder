json.extract! product, :id, :uuid, :type, :properties, :name, :created_at, :updated_at
json.url product_url(product, format: :json)
