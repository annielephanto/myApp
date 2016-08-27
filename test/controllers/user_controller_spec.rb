require 'rails_helper'

describe UsersController, :type => :controller do
   let(:user) { User.create!(email: "annie55880000@gmail.com", password: "annie1204") }
  
   describe "GET #show" do
     context "User is logged in" do

            before do
					sign_in :user
					it "loads correct user details" do
						get :show, id: @user.id
						expect(response).to have_http_status(200)
						expect(assigns(:user)).to eq user
					end
				end
			end
					

         context "No user is logged in" do
                it "redirects to login" do
                     get :show, id: @user.id
                          expect(response).to redirect_to(root_path)
                 end
              end
           end

     let(:user2) { User.create!(email: "w9cheng@ucsd.com", password: "annie1204") }
     describe "GET #show" do
     context "User is logged in" do

            before do
					sign_in :user2
					it "loads correct user details" do
						get :show, id: @user.id
						expect(response).to have_http_status(200)
						expect(assigns(:user2)).to eq user2
					end
				end
			end
					

         context "No user2 is logged in" do
                it "cannot access user2 details" do
                     get :show, id: @user.id
                          expect(assigns(:user)).not_to eq user_two
                          expect(response).to redirect_to(root_path)
                 end
              end
           end