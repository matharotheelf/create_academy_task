class Video < ApplicationRecord
  enum :provider, { MuxVideo: 0 }
  self.inheritance_column = "provider"

  validates :provider, presence: true
  validates :provider_id, presence: true
end
