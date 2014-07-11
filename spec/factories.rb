FactoryGirl.define do

  sequence :name, aliases: [:name_id] do |n|
    "Name#{n}"
  end
  factory :account_type do
    name_id
  end
end
