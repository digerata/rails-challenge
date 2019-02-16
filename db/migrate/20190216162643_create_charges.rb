class CreateCharges < ActiveRecord::Migration[5.2]
  def change
    create_table :charges do |t|
      t.boolean :paid
      t.decimal :amount
      t.string :currency
      t.boolean :refunded
      t.boolean :disputed
      t.belongs_to :customer, index: true

      t.timestamps
    end
  end
end
