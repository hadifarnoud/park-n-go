# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :parking_branch do
    branch_id 1
    company_id 1
    address_id 1
    telephone "MyString"
    email "MyString"
    longitude 1.5
    latitude 1.5
    parking_id 1
    service_id 1
  end
end
