require 'rails_helper'

describe UsersController, :type => :controller do
   #let(:user) { User.create!(email: "annie55880000@gmail.com", password: "annie1204") }
    before do
      @user = FactoryGirl.create(:user)
      @user2 = FactoryGirl.create(:user)
    end
         describe "GET #show" do
           context "User is logged in" do
            before do
            
				    	sign_in :user

             end

             
          it "doesn't load the second user" do
          get :show, id: @user2.id
          expect(response).to have_http_status(302)
          expect(response).to redirect_to(root_path)
          end


					it "loads correct user details" do
						get :show, id: @user.id
						expect(response).to have_http_status(200)
						expect(assigns(:user)).to eq user
					end
				
					

         context "No user is logged in" do
                it "redirects to login" do
                     get :show, id: @user.id
                          expect(response).to redirect_to(root_path)
                 end
              end
           end

     
					

      