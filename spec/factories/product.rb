FactoryGirl.define do
  factory :product do
    sequence(:name){|n| "Product_#{n}"}
    catalog
    description "Description...."
    price 10
  end
end
