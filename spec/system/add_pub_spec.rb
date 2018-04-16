require "rails_helper"

RSpec.describe "adding a pub", type: :system do
  it "allows a user to create a pub" do
    visit new_pub_path
    fill_in "Name", with: "Brother John's West Side"
    fill_in "Location", with: "Bend, OR"
    fill_in "Brews on Tap", with: "HWY97\nRed Chair\nRuby\nCast Out"
    click_on("Create Pub")
    visit pubs_path
    expect(page).to have_content("Brother John's West Side")
    expect(page).to have_content("Bend, OR")
    expect(page).to have_content("HWY97\nRed Chair\nRuby\nCast Out")
  end
end