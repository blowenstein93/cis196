class HomeController < ApplicationController
  def index
    @videos = Video.all
  end

  def show
    @video = Video.find(params[:id])
    @comment = Comment.new
    @comments = Comment.order(created_at: :desc).where(video_id: params[:id]).limit(4)
  end

  private 
  def video_params
  	params.require(:video).permit(:file, :user_id, :name)
  end


end
