class CreateTravels < ActiveRecord::Migration[5.0]
  def change
    create_table :travels do |t|
      t.string :from_country
      t.string :to_country
      t.string :from_city
      t.string :to_city
      t.datetime :start_date

      t.timestamps
    end
  end
end
