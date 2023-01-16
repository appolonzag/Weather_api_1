class CreateTableCurrent < ActiveRecord::Migration[7.0]
  def change
    create_table :currents do |t|
      t.datetime :date
      t.float :temperature
      t.integer :epoch_time
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end
