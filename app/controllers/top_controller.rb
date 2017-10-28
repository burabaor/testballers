class TopController < ApplicationController
  def index
    @videos = Video.all
    @categories = Category.all.includes(video_categories: :video)
  end
end
