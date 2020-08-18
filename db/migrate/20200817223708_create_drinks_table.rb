class CreateDrinksTable < ActiveRecord::Migration[6.0]
  def change
    create_table :drinks do |t|
      t.string :name
      t.text :description
      t.boolean :milk
      t.boolean :sweet
      t.boolean :caffeine
      t.string :hot_iced
      t.string :milk_type
      t.string :syrup
    end
  end
end

