class AddCompanyToDeals < ActiveRecord::Migration
  def change
    add_column :deals, :company, :string
  end
end
