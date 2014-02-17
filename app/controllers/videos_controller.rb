class VideosController < ApplicationController
  def index
    @videos = Video.all
  end

  def new
  	@video = Video.new
  end

  def create
  	@video = Video.new(video_params)
  	if @video.save
  		redirect_to videos_path
  	else 
  		render 'new'
  	end
  end

  def show
  end

  def edit
  end

  private 
  def video_params
  	params.require(:video).permit(:file, :user_id, :name)
  end

end
