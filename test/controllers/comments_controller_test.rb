require "test_helper"

class CommentsControllerTest < ActionDispatch::IntegrationTest
  def setup
    @project_conversation_history = project_conversation_histories(:one)
  end

  test "should create comment" do
    assert_difference('Comment.count') do
      post project_conversation_history_comments_path, params: {
        project_conversation_history_id: @project_conversation_history.id,
        comment: { body: 'New comment' }
      }
    end
    assert_redirected_to project_conversation_history_path @project_conversation_history
  end
end
