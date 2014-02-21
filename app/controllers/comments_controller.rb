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
    @comment = Comment.find(params[:id])
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.update_attributes(comment_params)
      redirect_to comment_path(@comment.id)
    else
      render 'edit'
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to comments_path
  end

  private
  def comment_params
  	params.require(:comment).permit(:user_id, :comment, :video_id)
  end
end