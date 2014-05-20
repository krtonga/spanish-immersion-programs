class SchoolsController < ApplicationController

#Maestros should only be able to edit a school when maestro[school_id] = school_id
  # before_action :authorize, only: [:edit]

  def index
    @schools = School.all
  end

  def new
    @school = School.new
    @school.courses.build
    @school.courses.build
  end

  def create
    new_school = School.create(school_params)

    new_course = Course.create(course_params)
    new_school.courses << new_course

    redirect_to schools_path
  end

  def show
    @school = School.find(params[:id])
  end

  def edit

    @school = School.find(params[:id])
    # if @school.maestro_id != current_user.id
    #   redirect_to root_path
    # end
  end

  def update

    upd_school = School.find(params[:id])
    upd_school.update(school_params)

    new_course = Course.create(course_params)
    upd_school.courses << new_course

    redirect_to school_path(upd_school)
  end

  def destroy
    School.delete(params[:id])
    Course.delete(params[:id])

    redirect_to schools_path
  end

  private

  def school_params
    params.require(:school).permit(:name, :website, :city, :address, :founded_by, :year_founded, :accreditation, :num_teachers, :av_years_experience, :teacher_pay, :num_tot_students, :openings, :summary, :methods, :materials, :soc_activities, :volunteering_op, :soc_initiatives, :host_families, :get_there, :more_info, :touristy, :mayan_lang, :childrens_prog, :teens_prog, :seniors_prog, :professional_prog, :prof_prog_descrip, :sp_teachers_prog, :distance_edu, :distance_descrip, :test_prep, :other_prog, :describe, :disability_accesib, :airport_pickup, :img1, :img2, :img3, :img4, :img5, :courses_attributes, :admin_fee, :max_students_per_class, :per_hr_private, :per_hr_group, :course)
  end

  def course_params
    params[:school][:course].permit(:hrs_per_wk, :price_change, :description, :homestay_incl, :price, :name)
  end

end
