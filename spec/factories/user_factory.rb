FactoryGirl.define do
	sequence(:email) { |n| "user#{n}@example.com" }
	factory :user do
	email 
    password "annie1204"
    first_name "annie"
    last_name "cheng"
    admin false

  end

end