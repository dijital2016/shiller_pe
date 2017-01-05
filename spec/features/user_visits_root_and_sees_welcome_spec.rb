require 'rails_helper'

describe "a user visits root page and sees welcome" do
  context "user goes to the root page" do
    it "should see welcome" do
      visit "/"

      expect(page).to have_content("Welcome!")
      expect(page).to have_content("Shiller P/E")
      expect(page).to have_content("Dividends")
      expect(page).to have_content("2016-11-01")
      expect(page).to have_content("$2,097.94")
      expect(page).to have_content("2016-10-01")
      expect(page).to have_content("26.50")
    end
  end
end
