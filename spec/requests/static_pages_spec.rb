require 'spec_helper'

describe "Static pages" do

	let(:base_title) {"Ruby on Rails Tutorial Sample App"}
  
  describe "Home Page" do
    it "should have the h1'sample app'" do
      visit root_path
      page.should have_selector('h1', text: 'Sample App')
    end

    it "should have the base_title" do
      visit root_path
      page.should have_selector('title', text: "Ruby on Rails Tutorial Sample App")
    end


    it "should have a title 'Home'" do
    	visit	root_path
    	page.should have_selector('title', text: "| Home")
    end
  end

  describe "Help Page" do
  	it "should have h1 'Help'"	do
  		visit help_path
  		page.should have_selector('h1', text: "Help")
  	end

    it "should have a base_title" do
      visit help_path
      page.should have_selector('title', text: "Ruby on Rails Tutorial Sample App")
    end

  	it "should have the title Help" do
  		visit help_path
  		page.should have_selector('title', text: "| Help")
  	end
  end

  describe "About Page" do
  	it "should have the h1 'About Us'" do
  		visit about_path
  		page.should have_selector('h1', text: "About")
  	end

    it "should have a base_title" do
      visit about_path
      page.should have_selector('title', text: "Ruby on Rails Tutorial Sample App")
    end

  	it "should have the title 'About Us'" do
  		visit about_path 
  		page.should have_selector('title', text: "| About")
  	end
  end

  describe "Contact Page" do
  	it "should have the h1 content 'Contact'" do
  		visit contact_path
  		page.should have_selector('h1', text: "Contact")
  	end

    it "should have the base_title" do
      visit contact_path
      page.should have_selector('title', text: "Ruby on Rails Tutorial Sample App")
    end

  	it "should have the title 'Contact'" do
  		visit contact_path
  		page.should have_selector('title', text: " | Contact")
  	end
  end

end
