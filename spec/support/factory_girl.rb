require 'factory_girl'
require 'faker'

FactoryGirl.define do
  factory :question do
    title "#{Faker::Hacker.verb} #{Faker::Hacker.adjective} #{Faker::Hacker.noun}"
    body Faker::Lorem.paragraph
  end

  factory :answer do
    body Faker::Lorem.paragraph
  end

end
