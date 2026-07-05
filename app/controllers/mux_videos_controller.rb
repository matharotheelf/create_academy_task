class MuxVideosController < ApplicationController
  def index
    @mux_videos = MuxVideo.all
  end

  def show
    @mux_video = MuxVideo.find(params.require("id"))
  end
end
