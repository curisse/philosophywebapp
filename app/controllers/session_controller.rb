# class SessionController < ApplicationController
#   def new
#   end

#   def create
#     user = User.find_by :email => params[:email]
#     if user.present? && user.authenticate(params[:password])
#       session[:user_id] = user.id
#       redirect_to root_path
#     else 
#       redirect_to login_path
#     end
#   end

#   def destroy
#     session[:user_id] = nil
#     redirect_to login_path
#   end

# end

class SessionController < ApplicationController
  def new
  end

  def create
    user = User.find_by :email => params[:email]
    if user.present? && user.authenticate(params[:password])
      if params[:remember_me]
        cookies.permanent[:auth_token] = user.auth_token
      else
        cookies[:auth_token] = user.auth_token
      end
      redirect_to root_path
    else 
      redirect_to login_path
    end
  end

  def destroy
    cookies.delete(:auth_token)
    redirect_to login_path, :notice => "Successfully logged out!"
  end

end
