class CommentsController < ApplicationController

  def create
    @school = School.find(params[:school_id])
    new_comment = Comment.create(comment_params)
    @school.comments << new_comment
    redirect_to school_path(@school.id)
  end

  def destroy
    @school = School.find(params[:school_id])
    @school_id = @school.id

    Comment.delete(params[:id])

    redirect_to school_path(@school)
  end

  private

  def comment_params
    params.require(:comment).permit(:user_name, :email, :source, :message)
  end

end
