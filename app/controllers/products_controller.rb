class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :set_combo_values, only:[:new, :edit, :create, :update]

  # GET /products
  # GET /products.json
  def index
    if user_signed_in?
      @products = Product.owner(current_user.store.company.id)
      @company_id = current_user.store.company.id
    else
      @products = Product.all
    end
  end

  # GET /products/1
  # GET /products/1.json
  def show
    if user_signed_in? && current_user.store.company.id == @product.company.id && !params.has_key?(:client)
      @attachment = Attachment.new
      render :admin
    end
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @company = current_user.store.company
    @product = @company.products.new(product_params)
    respond_to do |format|
      if @product.save()
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    def set_product
      @product = Product.find(params[:id])
    end

    def set_combo_values
      @unit = Unit.all.order(:title)
      @brand = Brand.all.order(:name)
      @provider = Provider.all.order(:name)
      @sub_category = SubCategory.all.order(:name)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :description, :price_sale, :price_cost, :price_offer, :state, :offer, :stock, :min_stock, :unit_id, :bar_code, :serial_number, :brand_id, :sub_category_id, :provider_id, :company_id, :avatar)
    end
end
