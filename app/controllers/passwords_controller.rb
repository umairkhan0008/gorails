class PasswordsController < ApplicationController
    #before_action :require_worker_logged_in!

    def edit
    end

    def update
         if @worker.update(password_params)
         redirect_to root_path, notice: "Password Updated!"

       else
         render :edit
       end
    end

    private 

    def password_params
        params.require(:worker).permit(:password, :password_confirmation) 
    end
end