json.extract! company, :id, :name, :bio, :email, :created_at, :updated_at
json.url company_url(company, format: :json)
