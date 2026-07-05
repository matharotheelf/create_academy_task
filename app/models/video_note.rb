class VideoNote < ApplicationRecord
  belongs_to :video, required: true
end
