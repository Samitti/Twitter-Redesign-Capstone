FactoryBot.define do
  factory :user do
    username { 'Sami' }
    full_name { 'Samuel Tewelde' }
  end

  factory :post do
    user_id { '1' }
    content { 'Hi this is Smais first tweet' }
  end
end
