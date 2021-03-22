class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    before_action :configure_permitted_parameters, if: :devise_controller?
    
    private
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :first_family_name, :last_family_name, :first_family_name_kana, :last_family_name_kana, :birthday])
        #devise_parameter_sanitizer.permit(:sign_in, keys: 
    end

end
