require "rails_helper"

describe "Get the root route", type: :request do
  it 'redirects to shortened_urls#news' do
    get root_path
    expect(response).to render_template('shortened_urls/new')
  end
end