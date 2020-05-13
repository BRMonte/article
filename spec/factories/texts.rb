FactoryBot.define do
  factory :text do
    sequence(:title) { |n| "My awesome text #{n}" }
    sequence(:content) { |n| "My awesome text's content #{n}" }
    sequence(:slug) { |n| "My Slug #{n}" }
    content { "MyText" }
    slug { "MyString" }
  end
end
