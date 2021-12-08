class UsersController < ApplicationController
    def show
        @user = current_user
        @user_email = current_user.email
    end

end
