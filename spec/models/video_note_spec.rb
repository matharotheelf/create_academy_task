require 'rails_helper'

RSpec.describe VideoNote, type: :model do
  it "belongs to video" do
    should belong_to(:video).required
  end
end
