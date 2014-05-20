class CoursesController < ApplicationController

  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
  end

  def create
    @school = School.find(params[:school_id])
    course = Course.create(course_params)
    school.courses << course
    redirect_to school_courses_path
  end

  def destroy
    school = School.find(params[:school_id])
    school_id = school.id

    Course.delete(params[:id])

    redirect_to school_path(school_id)
  end

  private

  def course_params
    params[:school][:course].permit(:hrs_per_wk, :price_change, :description, :homestay_incl, :price, :name)
  end

end
