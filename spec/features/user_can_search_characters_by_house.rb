require 'rails_helper'

feature "user can search for house members" do
  scenario "user submits valid state name" do
    visit '/'

    select "Gryffindor", from: :house

    click_on "Search For Members"

    expect(current_path).to eq(search_path)

    expect(page).to have_content("39 Members")

    expect(page).to have_css(".member", count: 39)

    within(first(".member")) do
      expect(page).to have_css(".name")
      expect(page).to have_css(".role")
      expect(page).to have_css(".house")
      expect(page).to have_css(".patronus")
      expect(page).to have_css(".phoenix")
    end
  end
end
