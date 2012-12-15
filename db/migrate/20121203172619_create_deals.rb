class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|
      t.string :name
      t.text :description
      t.float :price
      t.string :offers
      t.float :longitude
      t.float :latitude
      t.text :address

      t.timestamps
    end
  end
end
