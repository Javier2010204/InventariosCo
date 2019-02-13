json.extract! product, :id, :name, :description, :price_sale, :price_cost, :price_offer, :state, :offer, :stock, :min_stock, :unit_id, :bar_code, :serial_number, :brand_id, :sub_category_id, :provider_id, :created_at, :updated_at
json.url product_url(product, format: :json)
