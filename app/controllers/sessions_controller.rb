class SessionsController < ApplicationController
  def new
  end

  def create
    maestro = Maestro.find_by(email:params[:email])
    if maestro && maestro.authenticate(params[:password])
      session[:maestro_id] = maestro.id
      redirect_to maestros_path, notice: "Signed in with email: #{maestro.email}"
    else
      redirect_to log_in_path, alert: "Log-In failed"
    end
  end

  def destroy
    session[:maestro_id] = nil
    redirect_to log_in_path, notice: "Logged-Out"
  end
end
