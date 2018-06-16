class CreateShortenedUrls < ActiveRecord::Migration[5.0]
  def change
    create_table :shortened_urls do |t|
      t.string :original_url
      t.string :stub

      t.timestamps
    end
  end
end
