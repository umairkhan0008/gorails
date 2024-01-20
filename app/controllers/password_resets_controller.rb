class PasswordResetsController < ApplicationController
    def new
        
    end
    def create
        @worker = Worker.find_by(email: params[:email])

        if @worker.present?
            PasswordMailer.with(worker: @worker).reset.deliver_now
        else
            redirect_to root_path, notice: "if an account with that email was found, we have sent a link to reset your password"
        end
    end
end