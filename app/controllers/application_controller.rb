class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    before_action :configure_permitted_parameters, if: :devise_controller?

    protected
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:team, :playername, :tid])
        devise_parameter_sanitizer.permit(:account_update, keys: [:team, :playername, :tid])
    end

    helper_method :is_admin!

    private 
    def is_admin!
        if current_user && current_user.admin
        else
            redirect_to root_path
        end
    end

end
