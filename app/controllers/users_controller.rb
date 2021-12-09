class UsersController < ApplicationController
    before_action :set_user

    def show
        @user = current_user
        @user_email = current_user.email
        
    end

    private

    def set_user
        @user = current_user
        redirect_to root_path
    end



end
