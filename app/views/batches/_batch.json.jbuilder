json.extract! batch, :id, :name, :amount, :refillable, :unknownAmount, :unit, :fodderType, :created_at, :updated_at
json.url batch_url(batch, format: :json)
