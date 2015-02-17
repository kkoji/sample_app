FactoryGirl.define do
  factory :user do
    name  "Kazuya Kojima"
    email "k-kojima@starbank.jp"
    password "foobar"
    password_confirmation "foobar"
  end
end