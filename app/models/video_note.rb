class VideoNote < ApplicationRecord
  belongs_to :video, required: true
  validates :content, presence: true
end
