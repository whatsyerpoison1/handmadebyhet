class AddPriceToMacrames < ActiveRecord::Migration[6.0]
  def change
    add_monetize :teddies, :price, currency: { present: false }
  end
end
