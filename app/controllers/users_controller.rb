class UsersController < ApplicationController
  before_action :set_user
    
    def show
        @user = current_user
        @user_email = current_user.email
        
    end

    private

    def set_user
      @user = User.find(params[:id])
      if @user == current_user
      else
        redirect_to root_path
      end
      
    end
   
end
