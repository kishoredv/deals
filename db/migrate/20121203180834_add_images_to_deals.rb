class AddImagesToDeals < ActiveRecord::Migration
  def change
    add_column :deals, :image, :string
  end
end
