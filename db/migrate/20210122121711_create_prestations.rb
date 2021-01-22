class CreatePrestations < ActiveRecord::Migration[6.1]
  def change
    create_table :prestations do |t|
      t.string :name
      t.text :description
      t.references :service, null: false, foreign_key: true

      t.timestamps
    end
  end
end
