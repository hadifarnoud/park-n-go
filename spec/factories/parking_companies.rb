# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :parking_company do
    parking_company_id 1
    address_id 1
    email "MyString"
    website "MyString"
    telephone "MyString"
    description "MyString"
  end
end
