# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :transaction do
    transaction_id 1
    user_id 1
    parking_id 1
    service_id 1
    branch_id 1
    device "MyString"
    currency "MyString"
    point 1
  end
end
