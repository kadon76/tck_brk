require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do

    it "should have the content 'TCK'" do
      visit '/static_pages/home'
      expect(page).to have_content('TCK')
    end
  end
end
