class CreateMetrics < ActiveRecord::Migration[7.1]
  def change
    create_table :metrics do |t|
      t.string :name, null: false
      t.string :value, null: false
      t.timestamp :timestamp, null: false

      t.timestamps
    end
  end
end
