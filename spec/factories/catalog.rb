FactoryGirl.define do
  factory :catalog do
    sequence(:name){|n| "Catalog_#{n}"}
    description "Description...."
  end
end
