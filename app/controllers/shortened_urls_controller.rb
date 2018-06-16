class ShortenedUrlsController < ApplicationController
  def new
  end

  def create
    render plain: params[:original_url].inspect
  end
end
