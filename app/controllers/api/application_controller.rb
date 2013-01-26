class ApplicationController < ActionController::Base
  protect_from_forgery

  rescue_from CanCan::AccessDenied do |exception| #do the same for all the errors
    redirect_to root_path, :alert => exception.message
  end

end
