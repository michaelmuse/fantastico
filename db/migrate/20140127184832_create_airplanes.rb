class CreateAirplanes < ActiveRecord::Migration
  def change
    create_table :airplanes do |t|
      t.string :name
      t.integer :passenger_capacity
      t.string :manufacturer
      t.integer :year_made

      t.timestamps
    end
  end
end
