class CreateDrinksTable < ActiveRecord::Migration[6.0]
  def change
    create_table :drinks do |t|
      t.string :name
      t.text :description
      t.boolean :caffeine
      t.boolean :milk
      t.string :milk_alt
      t.boolean :sweet
      t.string :syrups
      t.boolean :temp
    end
  end
end
