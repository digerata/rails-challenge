json.array!(@charges) do |charge|
  json.extract! charge, :id, :paid, :amount, :currency, :refunded, :customer_id, :disputed
  json.url charge_url(charge, format: :json)
end
