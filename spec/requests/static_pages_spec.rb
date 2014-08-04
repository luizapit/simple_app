require 'spec_helper'

describe "Static pages" do

  subject {page}

  describe "Contact page" do
    before {visit contact_path}
    it { should have_content('Contact') }
  end
    #it "should have the title 'Contact'" do
     # visit '/static_pages/contact'
      #expect(page).to have_title("Ruby on Rails Tutorial Simple App | Contact")
    #end
  #end  

  describe "Home page" do
    it "should have the content 'Simple App'" do
      visit root_path
      expect(page).to have_content('Simple App')
    end
    #it "should have the title 'Home'" do
     # visit '/static_pages/home'
      #expect(page).to have_title("Ruby on Rails Tutorial Simple App | Home")
    #end
  end

  describe "Help page" do
    it "should have the content 'Help'" do
      visit help_path
      expect(page).to have_content('Help')
    end
   # it "should have the title 'Help'" do
    #  visit '/static_pages/home'
     # expect(page).to have_title("Ruby on Rails Tutorial Simple App | Home")
    #end
  end

  describe "About page" do
    it "should have the content 'About Us'" do
      visit about_path
      expect(page).to have_content('About Us')
    end
    #it "should have the title 'About Us'" do
     # visit '/static_pages/home'
      #expect(page).to have_title("Ruby on Rails Tutorial Simple App | Home")
    #end
  end
end