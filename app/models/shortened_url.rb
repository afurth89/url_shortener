class ShortenedUrl < ApplicationRecord

  after_create :generate_stub, unless: :stub?

  validates_format_of :original_url, :with => /\A(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?\z/ix, 
    :message => "Invalid URL"

private
  def generate_stub
    update_column :stub, SecureRandom.urlsafe_base64(3)
  rescue
    retry
  end
end

