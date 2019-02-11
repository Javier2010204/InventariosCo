json.extract! provider, :id, :name, :address, :phone, :email, :manager, :comment, :created_at, :updated_at
json.url provider_url(provider, format: :json)
