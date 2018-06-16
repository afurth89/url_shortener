require 'rails_helper'

RSpec.describe ShortenedUrlsController, type: :controller do
  describe "GET root" do
    it "renders the new template" do
    end
  end

  describe "GET new" do
    it "renders the new template" do
      get :new
      expect(response).to render_template("new")
    end
  end

  describe "POST create" do
    context "valid original url" do
      it "creates a new ShortenedUrl resource" do
      end

      it "renders the show template" do
      end

      it "returns the ShortenedUrl resource" do
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
