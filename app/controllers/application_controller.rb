class ApplicationController < ActionController::Base
    before_action :set_current_worker

    def set_current_worker
        if session[:user_id]
        Current.worker = Worker.find_by(id: session[:user_id])
        end
    end

    def require_worker_logged_in!
        redirect_to sign_in_path, alert: "you must be signed in to do that." if Current.worker.nil?
        
    end
end
