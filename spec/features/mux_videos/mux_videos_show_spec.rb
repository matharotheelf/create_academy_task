describe "Visit show page of mux video", type: :feature do
  let!(:mux_video_1){ create(:mux_video, provider_id: "PROVIDER-UID-1") }

  before :each do
    visit mux_video_url(mux_video_1.id)
  end

  it "displays index page title" do
    expect(page).to have_content 'Watch Video'
  end

  it "displays video element with correct uid" do
    mux_player = page.find('mux-player', match: :first)
    expect(mux_player['playback-id']).to eq(mux_video_1.provider_id)
  end
end
