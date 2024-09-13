require "test_helper"

class CommentTest < ActiveSupport::TestCase
  def setup
    @comment = comments(:comment_one)
  end

  test "should be valid" do
    assert @comment.valid?
  end

  test "body should be present" do
    @comment.body = ""
    assert_not @comment.valid?
  end

  test "should belong to a project_conversation_history" do
    assert_not_nil @comment.project_conversation_history
  end
end
