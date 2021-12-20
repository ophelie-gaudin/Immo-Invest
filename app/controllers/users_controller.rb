class UsersController < ApplicationController
  before_action :set_user
    
  def show
    @user = current_user
    @user_email = current_user.email
  end

  private

  def set_user
    @user = User.find(params[:id])
    
    if current_user.present? == false
      redirect_to root_path
    elsif @user == current_user
    else
      redirect_to user_path(current_user)
    end   
  end  
end
