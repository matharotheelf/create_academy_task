require 'rails_helper'

RSpec.describe VideoNote, type: :model do
  it "belongs to video" do
    should belong_to(:video).required
  end

  it "note content must be filled" do
    should validate_presence_of(:content)
  end
end
