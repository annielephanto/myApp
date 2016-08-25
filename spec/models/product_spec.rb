require 'rails_helper'
describe Product do
	before do
      @product = Product.create!(name: "race bike")
      @user = User.create!(email: "annie55880000@gmail.com", password: "annie1204")
      @product.comments.create!(rating: 1, user: @user, body: "Awful bike!")
      @product.comments.create!(rating: 3, user: @user, body: "okay")
      @product.comments.create!(rating: 5, user: @user, body: "Nice!")
    end
	it "returns the average rating of all comments" do
     expect(@product.average_rating).to eq 3
     end
     it "not valid" do # make sure that our validations work properly
			expect(Product.new(description: "new bike")).not_to be_valid # a product without a name
		end
end