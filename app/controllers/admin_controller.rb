class AdminController < ApplicationController
    before_action :authenticate_user!
    before_action :require_admin
   
    def index
      # Your admin-only logic here
    end
   
    private
   
    def require_admin
      unless current_user&.admin?
        flash[:alert] = "You are not authorized to access this page."
        redirect_to root_path
      end
    end
end