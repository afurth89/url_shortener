class ShortenedUrlsController < ApplicationController
  def new
  end

  def show
    @shortened_url = ShortenedUrl.find(params[:id])
  end

  def create
    @shortened_url = ShortenedUrl.new(shortened_url_params)
    @shortened_url.save
    redirect_to shortened_url_path(@shortened_url)
  end

  private

  def shortened_url_params
    params.require(:shortened_url).permit(:original_url)
  end
end
