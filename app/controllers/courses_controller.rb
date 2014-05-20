class CoursesController < ApplicationController

  def index
    @courses = Course.all
  end

  def destroy
    @school = School.find(params[:school_id])
    @school_id = school.id
    Course.delete(params[:course_id])
    redirect_to school_courses_path
  end
end
