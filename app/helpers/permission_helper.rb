module PermissionHelper

  def isUser?
    current_user.present? == true
  end

  def isAdmin?
    current_user.present? == true && current_user.admin == true
  end


end
    