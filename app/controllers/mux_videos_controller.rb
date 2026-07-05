class MuxVideosController < ApplicationController
  def index
    @mux_videos = MuxVideo.all
  end

  def show
  end
end
