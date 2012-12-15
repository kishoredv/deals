class CreateSoldouts < ActiveRecord::Migration
  def change
    create_table :soldouts do |t|
      t.string :customer_name
      t.string :customer_email
      t.string :card_number
      t.integer :expiry_date_year
      t.integer :expiry_date_month
      t.string :cvv

      t.timestamps
    end
  end
end
