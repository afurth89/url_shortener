class StubHandlerController < ApplicationController
  def show
    @shortened_url = ShortenedUrl.find_by! stub: params[:path]
    redirect_to @shortened_url.original_url
  end
end
