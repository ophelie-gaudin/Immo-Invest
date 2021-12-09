class ProjectsController < ApplicationController
    before_action :set_user
    
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

    def set_user
        @user = current_user
    end

end
