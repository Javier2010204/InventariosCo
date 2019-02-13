require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get products_url
    assert_response :success
  end

  test "should get new" do
    get new_product_url
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post products_url, params: { product: { bar_code: @product.bar_code, brand_id: @product.brand_id, description: @product.description, min_stock: @product.min_stock, name: @product.name, offer: @product.offer, price_cost: @product.price_cost, price_offer: @product.price_offer, price_sale: @product.price_sale, provider_id: @product.provider_id, serial_number: @product.serial_number, state: @product.state, stock: @product.stock, sub_category_id: @product.sub_category_id, unit_id: @product.unit_id } }
    end

    assert_redirected_to product_url(Product.last)
  end

  test "should show product" do
    get product_url(@product)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_url(@product)
    assert_response :success
  end

  test "should update product" do
    patch product_url(@product), params: { product: { bar_code: @product.bar_code, brand_id: @product.brand_id, description: @product.description, min_stock: @product.min_stock, name: @product.name, offer: @product.offer, price_cost: @product.price_cost, price_offer: @product.price_offer, price_sale: @product.price_sale, provider_id: @product.provider_id, serial_number: @product.serial_number, state: @product.state, stock: @product.stock, sub_category_id: @product.sub_category_id, unit_id: @product.unit_id } }
    assert_redirected_to product_url(@product)
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete product_url(@product)
    end

    assert_redirected_to products_url
  end
end
