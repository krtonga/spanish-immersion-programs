class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


#MAESTRO
  helper_method :current_maestro

  def current_maestro
    Maestro.find(session[:maestro_id]) if session[:maestro_id]
  end

  def authorize
    redirect_to schools_path if current_maestro.nil?
  end


#ADMINISTRATOR
  helper_method :current_administrator

  def current_administrator
    Administrator.find(session[:administrator_id]) if session[:administrator_id]
  end

  def authorize
    direct_to schools_path if current_administrator.nil?
  end
end

