class AttachmentsController < ApplicationController
	before_action :authenticate_user!, except:[:show]
	before_action :authenticate_owner!, except:[:show]

	def new

	end

	def create
		@attachment = Attachment.new(attachment_params)
		if @attachment.save
			redirect_to @attachment.product, notice: 'imagen guardada con exito'
		else
			redirect_to @product, notice: 'no pudimos guardar la imagen'
		end
	end

	def destroy
		
	end

	private
		def authenticate_owner!
			@product = Product.find(params[:attachment][:product_id])

			if @product.nil? || @product.company.id != current_user.store.company.id
				redirect_to root_path, notice: "No puedes editar este producto"
				return
			end
		end

		def attachment_params
			params.require(:attachment).permit(:product_id, :archivo)
		end
end
