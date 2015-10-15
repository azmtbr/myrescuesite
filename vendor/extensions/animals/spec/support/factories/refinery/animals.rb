
FactoryGirl.define do
  factory :animal, :class => Refinery::Animals::Animal do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

