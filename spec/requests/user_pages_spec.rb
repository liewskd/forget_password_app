require 'spec_helper'

#describe "UserPages" do
#  describe "GET /user_pages" do
#    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
#     get user_pages_index_path
#      response.status.should be(200)
#    end
#  end
#end



describe "User pages" do
    describe "Sign In Page" do
        it "should have the content 'Sign In'" do
            visit signin_path
            expect(page).to have_content('Sign In')
        end
        
        it "should have the title 'Sign In'" do
            visit signin_path
            expect(page).to have_title('Commonwealth Secondary School | Sign In')
        end
        
    end
end
