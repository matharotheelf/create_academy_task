FactoryBot.define do
  factory :video_note do
    content { "MyString" }
    timestamp { 1 }
    video { nil }
  end
end
