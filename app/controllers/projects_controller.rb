class ProjectsController < ApplicationController
    before_action :set_user
    
    def index
        @project= Project.all    
    end

    def new
        @project = Project.new
    end

    def show
        @project = Project.find(params[current_user.id])
        @project_title = @project.title 
        @project_localization = @project.localization 
        @project_comment = @project.comment
        @project_id = @project.user_id.id

    end


    def create
        puts "@@@@@@@@@@@@@@@@@@@@@@"
        puts params
    @project = Project.new(
        title: params[:title],
        comment: params[:comment],
        localization: params[:localization],
        user: user_id.to_i
        )
        if @project.save
            redirect_to projects_path
        else
            render "new"
        end

    end


    private

    def set_user
        @user = current_user
    end

end
