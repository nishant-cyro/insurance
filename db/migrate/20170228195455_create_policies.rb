class CreatePolicies < ActiveRecord::Migration[5.0]
  def change
    create_table :policies do |t|
      t.references :payment
      t.references :quote
      t.references :user
      t.string :number

      t.timestamps
    end
  end
end
