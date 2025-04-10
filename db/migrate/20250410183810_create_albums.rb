class CreateAlbums < ActiveRecord::Migration[8.0]
  def change
    create_table :albums do |t|
      t.string :title, null: false
      t.text :description, null: false
      
      t.timestamps
    end
  end
end
