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
    @video = Video.find(params[:id])
  end

  def edit
    @video = Video.find(params[:id])
  end

  def update
    @video = Video.find(params[:id])
    if @video.update_attributes(video_params)
      redirect_to video_path(@video.id)
    else
      render 'edit'
    end
  end

  def destroy
    @video = Video.find(params[:id])
    @video.destroy
    redirect_to videos_path
  end

  private 
  def video_params
  	params.require(:video).permit(:file, :user_id, :name)
  end

end
