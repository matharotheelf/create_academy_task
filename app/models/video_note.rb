class VideoNote < ApplicationRecord
  belongs_to :video, required: true
  validates :content, presence: true
  validates :timestamp, presence: true
end
