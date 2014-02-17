class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def new
  	@comment = Comment.new
  end

  def create
  	@comment.Comment.new(comment_params)
  	if @comment.save
  		redirect_to comment_path
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
  	params.require(:user, :comment)
  end
end
