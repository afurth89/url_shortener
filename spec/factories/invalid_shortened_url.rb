FactoryGirl.define do

  factory :invalid_shortened_url, parent: :shortened_url do
    original_url "I am not a valid URL"
  end

end