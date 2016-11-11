class CreateArtistsGenres < ActiveRecord::Migration[5.0]
  def change
    create_table :artists_genres do |t|
      t.belongs_to :artist, index: true
      t.belongs_to :genre, index: true
    end
  end
end
