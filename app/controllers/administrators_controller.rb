class AdministratorsController < ApplicationController

  def index
    @administrator = current_administrator
    @administrators = Administrator.all
  end

  def new
    @administrator = Administrator.new
  end

  def create
    Administrator.create(administrator_params)
    redirect_to administrators_path
  end

  def show
    @administrator = Administrator.find(params[:id])
  end

  def edit
    @administrator = Administrator.find(params[:id])
  end

  def update
    upd_admin = Administrator.find(params[:id])
    upd_admin.update(administrator_params)
    redirect_to administrators_path
  end


  private

  def administrator_params
    params.require(:administrator).permit(:name, :email, :password, :password_confirmation )
  end
end
