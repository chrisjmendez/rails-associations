class CreateTracks < ActiveRecord::Migration[5.0]
  def change
    create_table :tracks do |t|
      t.belongs_to :album, foreign_key: true
      t.belongs_to :artist, foreign_key: true
      t.integer :order

      t.timestamps
    end
  end
end
