class RegistrationsController < ApplicationController
    def new
        @worker = Worker.new
    end

    def create
        @worker = Worker.new(worker_params)
        if @worker.save!
        session[:user_id] = @worker.id
        redirect_to root_path, notice: "Successfully created account"
        else 
        flash[:alert] = "some thing was wrong"
        render :new
        end
      end
      
      private
      
      def worker_params
        params.require(:worker).permit(:email, :password, :password_confirmation)
      end
end