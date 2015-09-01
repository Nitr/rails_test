class Catalog < ActiveRecord::Base
  has_many :products
  validates :name, uniqueness: true
  validates :name, :description, presence: true
end
