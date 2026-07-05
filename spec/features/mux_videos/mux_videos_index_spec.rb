describe "Visit index page on homepage", type: :feature do
  before :each do
    mux_video_1 = create(:mux_video, provider_id: "PROVIDER-UID-1")
    mux_video_2 = create(:mux_video, provider_id: "PROVIDER-UID-2")
    visit '/'
  end

  it "displays mux video provider ID 1" do
    expect(page).to have_content 'PROVIDER-UID-1'
  end

  it "displays mux video provider ID 2" do
    expect(page).to have_content 'PROVIDER-UID-2'
  end

  it "displays index page title" do
    expect(page).to have_content 'List of Videos'
  end
end
