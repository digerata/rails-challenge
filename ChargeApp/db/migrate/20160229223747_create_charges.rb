class CreateCharges < ActiveRecord::Migration
  def change
    create_table :charges do |t|
      t.integer :created, limit: 5
      t.boolean :paid
      t.integer :amount
      t.string :currency
      t.boolean :refunded
      t.integer :customer_id
      t.boolean :disputed

      t.timestamps null: false
    end
  end
end
