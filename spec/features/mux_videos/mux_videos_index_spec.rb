describe "Visit index page on homepage", type: :feature do
  let!(:mux_video_1){ create(:mux_video, provider_id: "PROVIDER-UID-1") }
  let!(:mux_video_2){ create(:mux_video, provider_id: "PROVIDER-UID-2") }

  before :each do
    visit '/'
  end

  it "displays mux video provider ID 1" do
    page.should have_link(mux_video_1.provider_id, href: mux_video_path(mux_video_1))
  end

  it "displays mux video provider ID 2" do
    page.should have_link(mux_video_2.provider_id, href: mux_video_path(mux_video_2))
  end

  it "displays index page title" do
    expect(page).to have_content 'List of Videos'
  end
end
