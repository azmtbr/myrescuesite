
FactoryGirl.define do
  factory :forum, :class => Refinery::Forums::Forum do
    sequence(:title) { |n| "refinery#{n}" }
  end
end

