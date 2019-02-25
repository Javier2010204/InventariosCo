class AttachmentsController < ApplicationController
	before_action :authenticate_user!, except:[:show]
	before_action :authenticate_owner!, except:[:show]

	def new

	end

	def create
		
	end

	def destroy
		
	end

	private
		def authenticate_owner!
			@product = Product.find(params[:product_id])

			if @product.nil? || @product.store != current_user.store
				redirect_to root_path, notice: "No puedes editar este producto"
				return
			end
		end
end
