class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_action :app_settings

    def app_settings
     @app_setting = AppSetting.first
    end


    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    rescue ActiveRecord::RecordNotFound
    end
    helper_method :current_user
  
    def authorize
      redirect_to '/login' unless current_user
    end

end
