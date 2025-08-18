class SessionsController < ApplicationController

    def new
    end
    
    def create
        user = User.find_by(email: params[:session][:email])
      
        if user&.authenticate(params[:session][:password])
          session[:user_id] = user.id
          redirect_to user_path(user), notice: "Welcome back!"
        else
          flash.now[:alert] = "Invalid email or password"
          render :new, status: :unprocessable_entity
        end
    end
      
    
    def destroy
        session[:user_id] = nil
        redirect_to root_path, notice: "You have been logged out."
    end
    
end
