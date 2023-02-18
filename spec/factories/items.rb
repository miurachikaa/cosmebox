FactoryBot.define do
  factory :item do
    brand             { 'test' }
    category_id  { '2' }
    name              { 'test' }

    association :user
  end
end
