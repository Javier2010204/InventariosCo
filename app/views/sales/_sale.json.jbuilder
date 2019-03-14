json.extract! sale, :id, :number, :state, :client_id, :company_id, :user_id, :created_at, :updated_at
json.url sale_url(sale, format: :json)
