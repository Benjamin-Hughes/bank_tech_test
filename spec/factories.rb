require 'factory_girl'
require 'date'

FactoryGirl.define do
  factory :transaction do
    date Date.today.to_s
    type 'invalid'
    amount 500
    balance 1000
  end

  trait :deposit do
    type 'deposit'
  end

  trait :withdrawl do
    type 'withdrawl'
  end
  initialize_with { new(date, type, amount, balance)}
end
