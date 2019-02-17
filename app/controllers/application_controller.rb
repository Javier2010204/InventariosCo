class ApplicationController < ActionController::Base
    before_action :configuar_strong_params, if: :devise_controller?

    protected
        def configuar_strong_params
            devise_parameter_sanitizer.permit(:sign_up, keys: [:company_id, :rol_id, :email, :password])
        end
end
