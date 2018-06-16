class ShortenedUrl < ApplicationRecord

  after_create :generate_stub, unless: :stub?

private
  def generate_stub
    update_column :stub, SecureRandom.urlsafe_base64(3)
  rescue
    retry
  end
end

