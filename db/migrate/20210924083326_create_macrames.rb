class CreateMacrames < ActiveRecord::Migration[6.0]
  def change
    create_table :macrames do |t|
      t.string :sku
      t.string :name
      t.references :category, null: false, foreign_key: true
      t.string :photo_url

      t.timestamps
    end
  end
end
