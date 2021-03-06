class VideosController < ApplicationController
  def index
    @videos = Video.all
  end

  def new
    if user_signed_in?
  	 @video = Video.new
    else 
      redirect_to new_user_session_path
    end
  end

  def create
  	@video = Video.new(video_params)
  	if @video.user.id != current_user.id
        redirect_to root_path
    else 
      if @video.save
  		  redirect_to videos_path
  	   else 
  		   render 'new'
  	   end
    end
  end

  def show
    @video = Video.find(params[:id])
    @comment = Comment.new
    @comments = Comment.order(created_at: :desc).where(video_id: params[:id]).limit(4)
  end

  def edit
    @video = Video.find(params[:id])
  end

  def update
    @video = Video.find(params[:id])
    if @video.user_id != current_user.id
      render 'edit'
    else
      if @video.update_attributes(video_params)
        redirect_to video_path(@video.id)
      else
        render 'edit'
      end
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
