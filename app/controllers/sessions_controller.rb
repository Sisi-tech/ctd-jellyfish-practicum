class SessionsController < ApplicationController 

    def create 
        user = User.find_by(email: params[:session][:email].downcase)
        if user&.authenticate(params[:session][:password])
            log_in(user)
            redirect_to user 
        else  
            flash.now[:danger] = 'Invalid email/passowrd combination'
            render 'new'
        end 
    end 

    def destroy 
        session.delete(:user_id)
        redirect_to login_path, notice: "Logged out successfully"
    end 
end 
