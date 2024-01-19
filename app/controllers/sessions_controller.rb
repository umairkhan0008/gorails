class SessionsController < ApplicationController
    def new

    end
    
    def create
        worker = Worker.find_by(email: params[:email])
        if worker.present? && worker.authenticate(params[:password])
        session[:user_id] = worker.id
        redirect_to root_path, notice: "Logged in successfully"
        else
            
        render :new
        end
    end

    def destroy
        session[:user_id] = nil
        redirect_to root_path, notice: "Logged out" 
    end
end