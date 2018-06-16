FactoryGirl.define do

  factory :shortened_url do
    original_url "https://www.google.com/"
    stub Faker::Number.hexadecimal(4)
  end

end