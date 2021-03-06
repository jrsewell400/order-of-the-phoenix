require 'rails_helper'

RSpec.describe "As a user,", type: :feature do
  context "when I select 'Gryffindor, click search for members" do 
    it "then I should be on '/search', see the total number of Gryffindor members, and a list with detailed info on the members." do 
      visit '/'
      select "Gryffindor", from: :house
      click_on "Search For Members"

      expect(page).to have_current_path("/search?utf8=%E2%9C%93&house=Gryffindor&commit=Search+For+Members")
      expect(page).to have_content("40 Results")
      expect(page).to have_css(".member", count: 40)

      within(first(".member")) do
        expect(page).to have_css(".name")
      end

      #the remainder of this test would check displaying house info, which the view is primed to do.
    end
  end
end