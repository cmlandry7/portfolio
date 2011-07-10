class ApplicationController < ActionController::Base
  protect_from_forgery
  
  helper_method :admin?
  
  private
  
  def authorize
    unless admin?
      flash[:notice] = "Unauthorized access"
      redirect_to root_path
      false
    end
  end
  
  def admin?
    session[:password] == "generalpw"
  end
  
end
