class ChangedDatatypeForPriceField < ActiveRecord::Migration
  def up
    remove_column :deals, :price
    add_column :deals, :price, :text
  end

  def down
  end
end
