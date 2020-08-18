class CreateOrdersTable < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :date
      t.references :user
      t.references :drink
    end
  end
end
