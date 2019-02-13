require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  setup do
    @product = products(:one)
  end

  test "visiting the index" do
    visit products_url
    assert_selector "h1", text: "Products"
  end

  test "creating a Product" do
    visit products_url
    click_on "New Product"

    fill_in "Bar code", with: @product.bar_code
    fill_in "Brand", with: @product.brand_id
    fill_in "Description", with: @product.description
    fill_in "Min stock", with: @product.min_stock
    fill_in "Name", with: @product.name
    fill_in "Offer", with: @product.offer
    fill_in "Price cost", with: @product.price_cost
    fill_in "Price offer", with: @product.price_offer
    fill_in "Price sale", with: @product.price_sale
    fill_in "Provider", with: @product.provider_id
    fill_in "Serial number", with: @product.serial_number
    fill_in "State", with: @product.state
    fill_in "Stock", with: @product.stock
    fill_in "Sub category", with: @product.sub_category_id
    fill_in "Unit", with: @product.unit_id
    click_on "Create Product"

    assert_text "Product was successfully created"
    click_on "Back"
  end

  test "updating a Product" do
    visit products_url
    click_on "Edit", match: :first

    fill_in "Bar code", with: @product.bar_code
    fill_in "Brand", with: @product.brand_id
    fill_in "Description", with: @product.description
    fill_in "Min stock", with: @product.min_stock
    fill_in "Name", with: @product.name
    fill_in "Offer", with: @product.offer
    fill_in "Price cost", with: @product.price_cost
    fill_in "Price offer", with: @product.price_offer
    fill_in "Price sale", with: @product.price_sale
    fill_in "Provider", with: @product.provider_id
    fill_in "Serial number", with: @product.serial_number
    fill_in "State", with: @product.state
    fill_in "Stock", with: @product.stock
    fill_in "Sub category", with: @product.sub_category_id
    fill_in "Unit", with: @product.unit_id
    click_on "Update Product"

    assert_text "Product was successfully updated"
    click_on "Back"
  end

  test "destroying a Product" do
    visit products_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product was successfully destroyed"
  end
end
