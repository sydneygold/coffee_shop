class CreateOrdersTable < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :time_ordered
      t.references :drink
      t.references :user
    end
  end
end
