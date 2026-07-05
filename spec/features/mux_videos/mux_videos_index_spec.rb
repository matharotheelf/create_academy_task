describe "the signin process", type: :feature do
  it "displays index page title" do
    visit '/'
    expect(page).to have_content 'List of Videos'
  end
end
