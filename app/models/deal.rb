class Deal < ActiveRecord::Base
  mount_uploader :image, ImageUploader
belongs_to :user, :dependent => :destroy
  attr_accessible :address, :description, :company, :latitude, :longitude, :name, :offers, :price, :street, :image, :city, :state, :postal_code, :country
  acts_as_gmappable
  def gmaps4rails_address
    "#{latitude}, #{longitude}"
  end
  validates :name, :presence => true
end
