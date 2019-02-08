class UsuariosController < ApplicationController

    def new
        @user = User.new()
    end

    def create
        @company = current_user.company.id
        @user = User.new(company_id: @company)
        respond_to do |format|
            if @user.save
                format.html{redirect_to root_path, notice: "usuario creado con exito"}
            else
                format.html{render :new, notice: "error al crear el usuario"}
                format.json { render json: @user.errors, status: :unprocessable_entity }
            end
        end
    end
    
end
