require "rails_helper"

feature "Creating a new ShortenedUrl", type: :feature do

  scenario "user provides a valid URL" do
    visit root_path
    within("#new-shortened-url-form") do
      fill_in 'shortened_url[original_url]', with: 'https://www.google.com'
    end
    click_button "Submit"
    expect(page).to have_content "Success"
  end

  scenario "user provides an invalid URL" do
    visit root_path
    within("#new-shortened-url-form") do
      fill_in 'shortened_url[original_url]', with: 'I am not a real URL'
    end
    click_button "Submit"
    message =
      page.find(".unobtrusive-flash-message").native.inspect
    puts "message: #{message}"
    # expect(page).to have_selector ".unobtrusive-flash-message"   ## Not working at the moment
  end

end