class CommentsController < ApplicationController

  def create
    @school = School.find(params[:school_id])
    new_comment = Comment.create(comment_params)
    @school.comments << new_comment
    redirect_to school_path(:school)
  end

  def comment_params
    params[:school][:comment].permit(:user_name, :email, :source, :message)
  end

end
