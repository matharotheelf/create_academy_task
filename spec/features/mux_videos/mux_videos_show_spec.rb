describe "Visit show page of mux video", type: :feature do
  before :each do
    mux_video_1 = create(:mux_video, provider_id: "PROVIDER-UID-1")
    visit '/mux_videos/1'
  end

  it "displays index page title" do
    expect(page).to have_content 'Watch Video'
  end

  it "displays video UID" do
    expect(page).to have_content 'PROVIDER-UID-1'
  end
end
