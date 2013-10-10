require 'spec_helper'

#describe "StaticPages" do
#  describe "GET /static_pages" do
#    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
#      get static_pages_index_path
#      response.status.should be(200)
#    end
#  end
#end


describe "Static pages" do
    describe "Home page" do
        it "should have the content 'Forget Password'" do
            visit '/static_pages/home'
            expect(page).to have_content('Forget Password')
        end
        
        it "should have the title 'Home'" do
            visit '/static_pages/home'
            expect(page).to have_title('Commonwealth Secondary School | Home')
        end
        
    end
    
    describe "FAQ" do
        it "should have the content 'FAQ'" do
            visit '/static_pages/help'
            expect(page).to have_content('FAQ')
        end
        
        it "should have the title 'FAQ'" do
            visit '/static_pages/help'
            expect(page).to have_title('Commonwealth Secondary School | FAQ')
        end
    end
    
    describe "Feedback" do
        it "should have the content 'Feedback'" do
            visit '/static_pages/feedback'
            expect(page).to have_content('Feedback')
        end
        
        it "should have the title 'Feedback'" do
            visit '/static_pages/feedback'
            expect(page).to have_title('Commonwealth Secondary School | Feedback')
        end
    end
end