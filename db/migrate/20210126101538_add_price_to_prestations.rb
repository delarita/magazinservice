class AddPriceToPrestations < ActiveRecord::Migration[6.1]
  def change
    add_monetize :prestations, :price, currency: { present: false }
  end
end
