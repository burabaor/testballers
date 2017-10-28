class VideosController < ApplicationController
  before_action :authenticate_user!
  def new
    @video = Video.new
  end

  def show
    @video = Video.find(params[:id])
    render layout: "show_video"
  end

  def create
    video = Video.new(create_params)
    flash[:alert] = "mp4のファイルを送信してください" unless video.save
    redirect_to root_path
  end

  private
  def create_params
    params.require(:video).permit(:title, :image, :file, :description, :passcoad, { category_ids: [] }).merge(user_id: current_user.id, purchase_count: 0)
  end
end
