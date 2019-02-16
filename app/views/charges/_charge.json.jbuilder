json.extract! charge, :id, :paid, :amount, :currency, :refunded, :disputed, :created_at, :updated_at
json.url charge_url(charge, format: :json)
