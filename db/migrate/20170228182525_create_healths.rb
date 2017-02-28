class CreateHealths < ActiveRecord::Migration[5.0]
  def change
    create_table :healths do |t|
      t.datetime :date_of_birth
      t.string :pincode

      t.timestamps
    end
  end
end
