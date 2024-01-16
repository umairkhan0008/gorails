class SessionsController < ApplicationController
    def create
        worker = Worker.find_by(email: params[:email])
        if worker.present? && worker.authenticate(params[:password])
        session[:user_id] = worker.id
        redirect_to root_path, notice: "Logged in successfully"
        else
        flash[:alert] = "Invalid password or email"
        render :new
        end
    end
    def destroy
        session[:user_id] = nil
        redirect_to root_path, notice: "Logged out" 
    end
end