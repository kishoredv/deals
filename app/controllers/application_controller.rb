class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :is_admin?
  def is_admin?
  
    if current_user.admin?
      return true
    else
      return false
    end
  end
  
end
