require "test_helper"

class CommentsControllerTest < ActionDispatch::IntegrationTest
  def setup
    @project_conversation_history = project_conversation_histories(:one)
    @comment = comments(:comment_one)
  end

  test "should create comment" do
    assert_difference('Comment.count') do
      post comments_path, params: {
        project_conversation_history_id: @project_conversation_history.id,
        comment: { body: @comment.body }
      }
    end
    assert_redirected_to root_url
  end
end
