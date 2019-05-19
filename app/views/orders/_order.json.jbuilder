json.extract! order, :id, :name, :email, :credit_card_number, :expiry_date, :references, :created_at, :updated_at
json.url order_url(order, format: :json)
