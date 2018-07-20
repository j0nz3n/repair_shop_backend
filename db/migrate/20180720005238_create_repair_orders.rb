class CreateRepairOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :repair_orders do |t|
      t.references :device, foreign_key: true
      t.references :user, foreign_key: true
      t.date :date_in
      t.date :date_due
      t.date :date_out
      t.text :complaint
      t.text :diagnosis
      t.text :repair_action
      t.integer :user_rating

      t.timestamps
    end
  end
end
