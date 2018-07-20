class CreateDevices < ActiveRecord::Migration[5.1]
  def change
    create_table :devices do |t|
      t.references :user, index: true, foreign_key: true, null: false
      t.string :make, null: false
      t.string :model, null: false
      t.string :serial_number, null: false

      t.timestamps
    end
  end
end
