class ApplicationController < ActionController::Base
    before_action :fetch_user
    
    private 
    
    def check_for_admin
        redirect_to login_path unless(@current_user.present? && @current_user.admin?)
    end

    # def fetch_user
    #     @current_user = User.find_by :id => session[:user_id] if session[:user_id].present?
    #     session[:user_id] = nil unless @current_user.present? #logout non-existent users
    # end

    def fetch_user
        @current_user = User.find_by_auth_token!(cookies[:auth_token]) if cookies[:auth_token].present?
    end

    def check_for_login
        redirect_to login_path unless @current_user.present?
    end

end
