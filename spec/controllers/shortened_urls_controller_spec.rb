require 'rails_helper'

RSpec.describe ShortenedUrlsController, type: :controller do

  describe "POST create" do
    context "given a valid original url" do

      it "creates a new ShortenedUrl resource" do
        expect{
          post :create, params: { shortened_url: FactoryGirl.attributes_for(:shortened_url) }
        }.to change(ShortenedUrl,:count).by(1)
      end

      it "renders the :show template" do
        post :create, params: { shortened_url: FactoryGirl.attributes_for(:shortened_url) }
        expect(response).to redirect_to ShortenedUrl.last
      end

    end

    context 'given an invalid original url' do
      it "does not create a new ShortenedUrl resource" do
        expect{
          post :create, params: { shortened_url: FactoryGirl.attributes_for(:invalid_shortened_url) }
        }.to_not change(ShortenedUrl,:count)
      end

      it "renders the :new template" do
        post :create, params: { shortened_url: FactoryGirl.attributes_for(:invalid_shortened_url) }
        expect(response).to render_template :new
      end
    end

  end


end
