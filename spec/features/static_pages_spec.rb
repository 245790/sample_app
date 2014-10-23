require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do
  	before { visit '/static_pages/home' }

    it "should have the content 'Sample App'" do
      expect(page).to have_content('Sample App')
    end

    it "should have the title 'Home'" do
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home")
    end
  end

  describe "Help page" do
  	before { visit '/static_pages/help' }

    it "should have the content 'Help'" do
      expect(page).to have_content('Help')
    end

    it "should have the title 'Help'" do
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
    end
  end

  describe "About page" do
  	before { visit '/static_pages/about' }

    it "should have the content 'About Us'" do
      expect(page).to have_content('About Us')
    end

    it "should have the title 'About us'" do
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | About Us")
    end
  end
end	