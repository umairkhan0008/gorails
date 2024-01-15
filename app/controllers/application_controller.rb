class ApplicationController < ActionController::Base
    def create
        @worker = Worker.new(worker_params)
        # ...
      end
      
      private
      
      def worker_params
        params.require(:worker).permit(:email, :password, :password_confirmation)
      end
end
