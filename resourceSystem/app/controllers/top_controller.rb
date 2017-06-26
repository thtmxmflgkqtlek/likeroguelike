class TopController < ApplicationController
    protect_from_forgery except: :stage2
  def index
     weapon = params[:weapon][:weapon]
     weapon2 = params[:weapon][:weapon2]
     weapon3 = params[:weapon][:weapon3]
  end
end
