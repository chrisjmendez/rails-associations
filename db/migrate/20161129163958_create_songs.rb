class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
      t.belongs_to :track, foreign_key: true
      t.belongs_to :album, foreign_key: true
      t.belongs_to :artist, foreign_key: true
      t.string :title

      t.timestamps
    end
  end
end
