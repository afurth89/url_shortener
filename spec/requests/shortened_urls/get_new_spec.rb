require "rails_helper"

describe "Get the shortened_url#new route", type: :request do
  it 'renders the :new template' do
    get new_shortened_url_path
    expect(response).to render_template(:new)
  end
end