class PasswordResetsController < ApplicationController
    def new
    end

    def index
      end

    # def create
    #     @user = User.find_by_email(params[:email])

    #     if @user.present?
    #         PasswordMailer.with(user: @user).reset.deliver_later    
    #     end

    # def edit
    #     @user = User.find_by_password_reset_token!(params[:id])
    # end


    def create
        @user = User.find_by_email(params[:email])

        @user.send_password_reset if @user
        redirect_to login_path, :flash => { :notice => "If an account matching your email exists, we have sent a link to reset your password" }
    end

    def edit
        @user = User.find_by_password_reset_token!(params[:id])
    end

    def update
        @user = User.find_by_password_reset_token!(params[:id])
        if @user.password_reset_sent_at < 5.minutes.ago
            redirect_to new_password_reset_path, :alert => "Password reset has token expired."
        elsif @user.update_attributes(user_params)
            redirect_to login_path, :notice => "Password has been reset!"
        else
            render :edit
        end
    end        

    private
    def user_params
      params.require(:user).permit(:email, :password)
    end

end

