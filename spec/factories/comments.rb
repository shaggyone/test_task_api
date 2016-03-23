FactoryGirl.define do

  factory :comment, class: Comment do

    sequence(:body) { Faker::Hipster.sentence } # Не знал про хипстерские тексты ).
    published_at Time.now

    association :user, factory: :user

  end

end
