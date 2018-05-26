json.extract! creditcard, :id, :uuid, :ccnumber, :cvn, :address, :name, :exp, :created_at, :updated_at
json.url creditcard_url(creditcard, format: :json)
