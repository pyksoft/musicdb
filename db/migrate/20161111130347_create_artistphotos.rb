class CreateArtistphotos < ActiveRecord::Migration[5.0]
  def change
    create_table :artistphotos do |t|
      t.references :artist, foreign_key: true
      t.string :image

      t.timestamps
    end
  end
end
