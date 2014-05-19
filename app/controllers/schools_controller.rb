class SchoolsController < ApplicationController
  def index
    @schools = School.all
  end

  def new
    @school = School.new
  end

  def create
    new_school = School.create(school_params)

    redirect_to 'school_path'
  end

  def show
    @school = School.find(params[:id])
  end

  def edit
    @school = School.find(params[:id])
  end

  def update
    upd_school = School.find(params[:id])
    upd_school.update(school_params)
    redirect_to 'school_path(school)'
  end

  def destroy
    School.delete(params[:id])
    redirect_to '/schools'
  end

  private

  def school_params
    params.require(:school).permit(:name, :website, :city, :address, :founded_by, :year_founded, :accreditation, :num_teachers, :av_years_experience, :teacher_pay, :num_tot_students, :openings, :summary, :methods, :materials, :soc_activities, :volunteering_op, :soc_initiatives, :host_families, :get_there, :more_info, :touristy, :mayan_lang, :childrens_prog, :teens_prog, :seniors_prog, :professional_prog, :prof_prog_descrip, :sp_teachers_prog, :distance_edu, :distance_descrip, :test_prep, :other_prog, :describe, :disability_accesib, :airport_pickup, :img1, :img2, :img3, :img4, :img5)
  end

end
