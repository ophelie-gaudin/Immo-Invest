class ProjectsController < ApplicationController
    before_action :set_user
    
    def index
        
    end

    def show
        
    end

    private

    def set_user
        @user = current_user
    end

end
