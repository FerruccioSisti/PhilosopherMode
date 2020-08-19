class ApplicationController < ActionController::Base

    helper_method :is_admin!
    # before_action :configure_permitted_parameters, if: :devise_controller?

    # protected
    # def configure_permitted_parameters
    #     devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:team, :playername, :email, :password) }
    #     devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:team, :playername, :email, :password, :current_password) }
    # end


    private 
    def is_admin!
        if current_user && current_user.admin
        else
            redirect_to root_path
        end
    end

end
