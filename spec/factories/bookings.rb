# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :booking do
    booking_id 1
    user_id 1
    transaction_id 1
    car_id 1
    drop_off "2013-01-02 21:58:57"
    pick_up "2013-01-02 21:58:57"
    flight_inbound "MyString"
    flight_outbound "MyString"
    where_i_parked "MyString"
    feedback_id 1
  end
end
