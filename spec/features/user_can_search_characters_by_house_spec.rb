require 'rails_helper'

RSpec.describe "user can search for house characters" do
  describe "user submits valid house name" do
    it "Displays each character and their attributes" do
      visit '/'

      select "Gryffindor", from: :house

      click_on "Search For Members"

      expect(current_path).to eq(search_path)
      save_and_open_page
      expect(page).to have_content("41 Members")

      expect(page).to have_css(".character", count: 41)

      within(first(".character")) do
        expect(page).to have_css(".name")
        expect(page).to have_css(".role")
        expect(page).to have_css(".house")
        expect(page).to have_css(".patronus")
      end
    end
  end
end
