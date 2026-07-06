require 'rails_helper'

RSpec.describe Video, type: :model do
  it "should validate presence of provider" do
    should validate_presence_of(:provider)
  end

  it "should define enum for provider" do
    should define_enum_for(:provider).with_values(MuxVideo: 0)
  end
end
