class ShortenedUrlsController < ApplicationController
  def new
  end

  def create
    @shortened_url = ShortenedUrl.new(shortened_url_params)
    @shortened_url.save
    redirect_to new_shortened_url_path
  end

  private

  def shortened_url_params
    params.require(:shortened_url).permit(:original_url)
  end
end
