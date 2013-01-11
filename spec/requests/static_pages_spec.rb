require 'spec_helper'

describe "StaticPages" do
  
  describe "Home page" do
  
		it "should have the content 'Sample App'" do
		#	visit '/home'
			visit root_path
			page.should have_selector('h1',:text=>'Sample App')
		end
		
		it "should have the right title" do
		#visit '/home'
		visit root_path
		page.should have_selector('title',
                    :text => "Ruby on Rails Tutorial Sample App")
		end

	#	 it "should not have a custom page title" do
	#		visit '/static_pages/home'
	#		page.should_not have_selector('title', :text = '| Home')
	#	end

		
	end

	describe "Help page" do
  
		it "should have the content 'Help'" do
			visit help_path
			page.should have_selector('h1',:text=>'Help')
		end
		
		it "should have the right title" do
		visit help_path
		page.should have_selector('title',
                    :text => "| Help")
	end

		
	end
	
	
	describe "About page" do
  
		it "should have the content 'About'" do
			visit about_path
			page.should have_selector('h1',:text=>'About Us')
		end
		
		it "should have the right title" do
		visit '/about'
		page.should have_selector('title',
                    :text => "| About")
	end

	end


	 describe "Contact page" do

    it "should have the h1 'Contact'" do
      visit '/contact'
      page.should have_selector('h1', text: 'Contact')
    end

    it "should have the title 'Contact'" do
      visit '/contact'
      page.should have_selector('title',
                    text: "| Contact")
    end
   
  end



	
end
