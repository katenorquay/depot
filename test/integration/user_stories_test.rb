require 'test_helper'

class UserStoriesTest < ActionDispatch::IntegrationTest
  fixtures :products

  start_order_count = Order.count
  ruby_book = products(:ruby)

  get "/"
  assert_response :success
  assert_select 'h1', 'Book Catalog'

  test "the truth" do
     assert true
  end
end
