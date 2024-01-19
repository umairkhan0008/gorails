class MainController < ApplicationController
    def index
            if session[:user_id]
                @worker = Worker.find_by(id: session[:user_id])
        end
    end
end