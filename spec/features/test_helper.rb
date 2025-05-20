require 'rails_helper'

describe "Test", type: :feature, js: true do
  before do
    # Create a quest before visiting the page
    create(:quest, name: "Sample Quest")
    visit quests_path
  end

  it "displays the quests index page" do
    # Check for the h1 element
    expect(page).to have_selector("h1", text: "Quests")

    # Check that our quest is displayed
    expect(page).to have_content("Sample Quest")
  end
end
