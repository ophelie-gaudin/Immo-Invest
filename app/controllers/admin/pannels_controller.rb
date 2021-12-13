module Admin
  class PannelsController < ApplicationController
    before_action :only_admin

    def show
      @users = User.all

      @projects = Project.all

      @housings = Housing.all
    end

    private 

    def only_admin
      
      if !user_signed_in? || current_user.admin == false
        redirect_to root_path
      end

    end

  end
end