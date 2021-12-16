class StaticsController < ApplicationController
skip_before_action :verify_authenticity_token
    def create
      @name = params[:name]
      @lastname = params[:lastname]
      @email = params[:email]
      @message = params[:message]
      @contact = Contact.new(name:@name, lastname:@lastname , email:@email , message: @message)
     
        respond_to do |format|
          if @contact.save
            format.html { redirect_to root_path }
        end
      end
    
      
    end
end