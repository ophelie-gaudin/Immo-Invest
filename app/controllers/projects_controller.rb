class ProjectsController < ApplicationController
    before_action :set_user_project, only: [:show]
    
    def index
        @project= Project.all
    end

    def new
        @project = Project.new
    end

    def show
        @project = Project.find(params[:id])
        @project_title = @project.title 
        @project_localization = @project.localization 
        @project_comment = @project.comment
        @project_id = @project.user_id.to_i
        @housing = Housing.find(params[:id])
        @housing_title =@housing.property_category
        @housing_price = @housing.offer_price
        @housing_localization = @housing.localization
        @housing_profitability = @housing.offer_profitability



    end


    def create
        @project = Project.create(
        title: params[:project][:title],
        comment: params[:project][:comment],
        localization: params[:project][:localization],
        user_id: current_user.id
        )
        redirect_to project_path(@project.id)
    end


    private

    def set_user_project
        @project_user = Project.find(params[:id].to_i).user_id
       
        if @project_user.to_i == current_user.id
        else
          redirect_to root_path
        end
        
    end

end
