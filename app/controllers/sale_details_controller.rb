class SaleDetailsController < ApplicationController
  before_action :set_sale, only:[:new, :create, :destroy]

  # GET /sale_details
  # GET /sale_details.json
  def index
    @sale_details = SaleDetail.all
  end

  # GET /sale_details/1
  # GET /sale_details/1.json
  def show
  end

  # GET /sale_details/new
  def new
    @sale_detail = @sale.sale_details.build
    @sale_details.product = Product.first
  end

  # GET /sale_details/1/edit
  def edit
  end

  # POST /sale_details
  # POST /sale_details.json
  def create
    product_exists = false
    product_id = params[:sale_details][:product_id].to_i
    @sale.sale_details.each do |detail|
        if detail.product_id == product_id
            product_exists = true
            @sale_detail = detail
            @save_sale_detail = detail.id
        end
    end
  end

  # PATCH/PUT /sale_details/1
  # PATCH/PUT /sale_details/1.json
  def update
    respond_to do |format|
      if @sale_detail.update(sale_detail_params)
        format.html { redirect_to @sale_detail, notice: 'Sale detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @sale_detail }
      else
        format.html { render :edit }
        format.json { render json: @sale_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sale_details/1
  # DELETE /sale_details/1.json
  def destroy
    @sale_detail.destroy
    respond_to do |format|
      format.html { redirect_to sale_details_url, notice: 'Sale detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sale
      @sale = Sale.find(params[:sale_id].to_i)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sale_detail_params
      params.require(:sale_detail).permit(:number, :product_id, :sale_id, :qty, :price, :_destroy)
    end
end
