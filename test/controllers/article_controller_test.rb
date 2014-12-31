require 'test_helper'

class ArticleControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "index" do
    get :index
    assert_response :success
  end
end
