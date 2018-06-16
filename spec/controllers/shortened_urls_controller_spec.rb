require 'rails_helper'

RSpec.describe ShortenedUrlsController, type: :controller do

  describe "POST create" do
    context "given a valid original url" do

      it "creates a new ShortenedUrl resource" do
        expect{
          post :create, params: { shortened_url: FactoryGirl.attributes_for(:shortened_url) }
        }.to change(ShortenedUrl,:count).by(1)
      end

      it "renders the show page for the shortened url" do
        post :create, params: { shortened_url: FactoryGirl.attributes_for(:shortened_url) }
        expect(response).to redirect_to ShortenedUrl.last
      end

    end

    context 'invalid original url' do
      it "does not create a new ShortenedUrl resource" do
      end

      it "renders the new template" do
      end

      it "renders a flash message notifying user original url is invalid" do
      end
    end

  end

  # This would be a request to 'http://localhost:3000/a1b2c3'
  describe "GET show" do
    context "valid shortened url" do
      it "redirects to the original url" do
      end
    end

    context "invalid shortened url" do
      it "redirects to the index route" do
      end

      it "renders a flash message notifying user stub does not exist" do
      end
    end
  end
end
