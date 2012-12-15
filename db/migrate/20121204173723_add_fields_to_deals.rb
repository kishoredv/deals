class AddFieldsToDeals < ActiveRecord::Migration
  def change
    add_column :deals, :city, :string
    add_column :deals, :state, :string
    add_column :deals, :postal_code, :string
    add_column :deals, :country, :string
    add_column :deals, :street, :string
  end
end
