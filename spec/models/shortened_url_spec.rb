require 'rails_helper'

RSpec.describe ShortenedUrl, type: :model do

  it 'exists with a valid url' do
    shortened_url = ShortenedUrl.create!(original_url: "https://wwww.google.com")
    expect(shortened_url).to be_a ShortenedUrl
  end
end
