class ShortenedUrlsController < ApplicationController
  def index
    redirect_to new_shortened_url_path
  end

  def new
  end

  def show
    @shortened_url = ShortenedUrl.find(params[:id])
  end

  def create
    @shortened_url = ShortenedUrl.new(shortened_url_params)
    raise StandardError unless UrlValidator.valid? @shortened_url.original_url
    @shortened_url.save!
    redirect_to shortened_url_path(@shortened_url)
  rescue
    flash.now[:warning] = "It looks like '#{@shortened_url.original_url}' is not a valid URL"
    render :new
  end

  private

  def shortened_url_params
    params.require(:shortened_url).permit(:original_url)
  end
end
