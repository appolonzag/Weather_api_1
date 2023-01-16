class CreateWeathers < ActiveRecord::Migration[7.0]
  def change
    create_table :forecasts do |t|
      t.datetime :date
      t.float :temperature
      t.integer :epoch_time

      t.timestamps
    end
  end
end
