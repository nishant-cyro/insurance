class CreateMotors < ActiveRecord::Migration[5.0]
  def change
    create_table :motors do |t|
      t.string :vehicle_id
      t.datetime :registration_date
      t.datetime :policy_start_date
      t.datetime :policy_end_date
      t.string :rto_code

      t.timestamps
    end
  end
end
