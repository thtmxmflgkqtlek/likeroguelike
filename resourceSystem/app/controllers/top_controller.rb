class TopController < ApplicationController
    protect_from_forgery except: [:stage2, :index]
  def index
     weapon = params[:weapon]
     weapon2 = params[:weapon2]
     weapon3 = params[:weapon3]
  end
  def stage2
     weapon = params[:weapon]
     weapon2 = params[:weapon2]
     weapon3 = params[:weapon3]
 end
end