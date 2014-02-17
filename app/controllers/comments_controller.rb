class CommentsController < ApplicationController
  def index
    @comment = Comment.all
  end

  def new
    @comments = Comment.new
  end

  def create
  	@comment = Comment.new(comment_params)
  	if @comment.save
  		redirect_to comments_path
  	else
  		render 'new'
  	end
  end
  
  def show
  end

  def edit
  end

  private
  def comment_params
  	params.require(:comment).permit(:user_id, :comment, :video_id)
  end
end