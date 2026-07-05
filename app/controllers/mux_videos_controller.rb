class MuxVideosController < ApplicationController
  def index
    @mux_videos = MuxVideo.all
  end
end
