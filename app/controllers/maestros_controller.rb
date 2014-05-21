class MaestrosController < ApplicationController

  def index
    @maestro = current_maestro
    @maestros = Maestro.all
  end

  def new
    @maestro = Maestro.new
  end

  def create
    Maestro.create(maestro_params)
    redirect_to maestros_path
  end

  def show
    @maestro = Maestro.find(params[:id])
  end

  def edit
    @maestro = Maestro.find(params[:id])
  end

  def update
    edited_maestro = Maestro.find(params[:id])
    edited_maestro.update(maestro_params)
    redirect_to maestro_path
  end

  private

  def maestro_params
    params.require(:maestro).permit(:email, :phone_number, :history, :teaching_methodology, :other, :profile_pic, :school_id, :password, :password_confirmation)
  end
end
