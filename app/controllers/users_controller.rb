class UsersController < ApplicationController
  before_action :set_user
    
    def show
        @user = current_user
        @user_email = current_user.email
        puts "#" * 60
        puts "#{Rails.application.config.assets.paths}"
        puts "#" * 60
        puts "#" * 60
        puts "#" * 60
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
