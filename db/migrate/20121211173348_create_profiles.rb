class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :headline
      t.string :phone
      t.string :designation

      t.timestamps
    end
  end
end
