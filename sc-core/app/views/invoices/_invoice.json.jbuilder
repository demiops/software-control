json.extract! invoice, :id, :uuid, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
