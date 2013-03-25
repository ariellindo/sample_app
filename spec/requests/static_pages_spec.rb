require 'spec_helper'

describe "Static pages" do

	let(:base_title) {"Ruby on Rails Tutorial Sample App"}
  
  describe "Home Page" do
    it "should have the h1'sample app'" do
      visit '/static_pages/home'
      page.should have_selector('h1', text: 'Sample App')
    end

    it "should have the base_title" do
      visit '/static_pages/home'
      page.should have_selector('title', text: "Ruby on Rails Tutorial Sample App")
    end


    it "should have a title 'Home'" do
    	visit	'/static_pages/home'
    	page.should have_selector('title', text: "| Home")
    end
  end

  describe "Help Page" do
  	it "should have h1 'Help'"	do
  		visit '/static_pages/help'
  		page.should have_selector('h1', text: "Help")
  	end

    it "should have a base_title" do
      visit '/static_pages/help'
      page.should have_selector('title', text: "Ruby on Rails Tutorial Sample App")
    end

  	it "should have the title Help" do
  		visit '/static_pages/help'
  		page.should have_selector('title', text: "| Help")
  	end
  end

  describe "About Page" do
  	it "should have the h1 'About Us'" do
  		visit '/static_pages/about'
  		page.should have_selector('h1', text: "About Us")
  	end

    it "should have a base_title" do
      visit '/static_pages/about'
      page.should have_selector('title', text: "Ruby on Rails Tutorial Sample App")
    end

  	it "should have the title 'About Us'" do
  		visit '/static_pages/about'
  		page.should have_selector('title', text: "| About Us")
  	end
  end

  describe "Contact Page" do
  	it "should have the h1 content 'Contact" do
  		visit '/static_pages/contact'
  		page.should have_selector('h1', text: "Contact Us")
  	end

    it "should have the base_title" do
      visit '/static_pages/contact'
      page.should have_selector('title', text: "Ruby on Rails Tutorial Sample App")
    end

  	it "should have the title 'Contact Us'" do
  		visit '/static_pages/contact'
  		page.should have_selector('title', text: " | Contact Us")
  	end
  end

end
