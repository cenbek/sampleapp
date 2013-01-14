require 'spec_helper'

describe "StaticPages" do
  
  subject { page }
  
  describe "Home page" do
  
		before {visit root_path}
		
		it{should have_selector('h1',:text=>'Sample App')}
		it{should have_selector('title',:text => "Ruby on Rails Tutorial Sample App")}
		

	#	 it "should not have a custom page title" do
	#		visit '/static_pages/home'
	#		page.should_not have_selector('title', :text = '| Home')
	#	end

		
	end

	describe "Help page" do
		before {visit help_path}
		
		it "should have the content 'Help'"
			it{should have_selector('h1',:text=>'Help')}
		it "should have the right title" 
			it{should have_selector('title',:text => "| Help")}
	end
	
	
	describe "About page" do
		before {visit about_path}
		it "should have the content 'About'" 
			it{should have_selector('h1',:text=>'About Us')}

		it "should have the right title"
		it{should have_selector('title',
                    :text => "| About")}


	end


	 describe "Contact page" do

	before{visit contact_path}
    it "should have the h1 'Contact'"
      it{should have_selector('h1', text: 'Contact')}
    
    it "should have the title 'Contact'"
      it{should have_selector('title',
                    text: "| Contact")}
   
  end



	
end
