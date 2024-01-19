class ApplicationController < ActionController::Base

    def require_worker_logged_in!
        redirect_to sign_in_path, alert: "you must be signed in to do that." if @worker.nil?
        
        end
        end
