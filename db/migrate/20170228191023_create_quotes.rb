class CreateQuotes < ActiveRecord::Migration[5.0]
  def change
    create_table :quotes do |t|
      t.decimal :amount
      t.references :product_type
      t.references :insurer

      t.timestamps
    end
  end
end
