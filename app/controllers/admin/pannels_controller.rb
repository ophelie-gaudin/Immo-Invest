module Admin
  class PannelsController < ApplicationController
    before_action :only_admin
    def new

    end

    def create

    end

    def show
     
    end

    private 

    def only_admin
      

      if !user_signed_in? || current_user.admin == false
        redirect_to root_path
      end

    end

  end
end