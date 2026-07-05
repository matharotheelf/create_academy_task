require 'rails_helper'

RSpec.describe Video, type: :model do
  it "should validate presence of provider" do
    should validate_presence_of(:provider)
  end
end
