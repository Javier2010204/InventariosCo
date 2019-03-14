json.extract! sale_detail, :id, :number, :product_id, :sale_id, :qty, :price, :created_at, :updated_at
json.url sale_detail_url(sale_detail, format: :json)
