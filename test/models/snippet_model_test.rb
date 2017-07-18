require 'test_helper'

class SnippetTest < ActionDispatch::IntegrationTest
  
  test "should not save empty snippet" do
    snippet = Snippet.new
    assert_not snippet.save
  end

end