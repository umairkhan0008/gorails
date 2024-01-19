class PasswordsController < ApplicationController
    before_action :require_worker_logged_in!
    
    def update
      if Current.worker.update(password_params)
        redirect_to root_path, notice: "Password Updated!"

      else
        render :edit
      end
    end

    def edit
      
    end

    private 

    def password_params
        params.require(:worker).permit(:password, :password_confirmation) 
    end
end