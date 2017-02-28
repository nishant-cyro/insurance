class CreateProposals < ActiveRecord::Migration[5.0]
  def change
    create_table :proposals do |t|
      t.references :product
      t.references :quote
      t.references :insurer

      t.timestamps
    end
  end
end
