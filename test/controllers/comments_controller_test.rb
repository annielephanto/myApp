require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
  def destroy
  @comment = Comment.find(params[:id])
  product = @comment.product
  @comment.destroy
  redirect_to product
  end

end
