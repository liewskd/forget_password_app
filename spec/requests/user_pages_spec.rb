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
    
    subject { page }
    
   
    
    describe "Sign Up Page" do
        before {visit signup_path}
        it { should have_content 'Sign Up'}
        it { should have_title 'Sign Up'}
        
    end
    
    describe "profile page" do
        let(:user){ FactoryGirl.create(:user) }
        before { visit user_path(user) }
        
        it {should have_content(user.name) }
        it {should have_title(user.name) }
    end
end
