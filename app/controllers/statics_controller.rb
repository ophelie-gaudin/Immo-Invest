class StaticsController < ApplicationController
  after_contact :admin_email

  def contact
    
  end

  def admin_send
    UserMailer.admin_email(self).deliver_now
  end



end