FactoryBot.define do
  factory :article do
    title { Cicero.words(8) }
    text { Cicero.words(200) }
  end
end