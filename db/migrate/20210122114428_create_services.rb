class CreateServices < ActiveRecord::Migration[6.1]
  def change
    create_table :services do |t|
      t.string :name
      t.index :name, unique: true
      t.text :description

      t.timestamps
    end
  end
end
