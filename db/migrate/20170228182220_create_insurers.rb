class CreateInsurers < ActiveRecord::Migration[5.0]
  def change
    create_table :insurers do |t|
      t.string :title

      t.timestamps
    end
  end
end
