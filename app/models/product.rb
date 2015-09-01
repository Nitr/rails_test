class Product < ActiveRecord::Base
  belongs_to :catalog
  validates :name, uniqueness: {scope: :catalog_id, case_sensitive: false}
  validates :name, :description, :price, :catalog_id, presence: true
end
