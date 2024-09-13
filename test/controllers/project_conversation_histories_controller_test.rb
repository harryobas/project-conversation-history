require "test_helper"

class ProjectConversationHistoriesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @project_conversation_history = project_conversation_histories(:two)
  end

  test 'should get show_single' do 
    get root_url
    assert_response :success
    assert_select 'h1', @project_conversation_history.title
  end

  test "should update project status" do
    patch project_conversation_history_path(@project_conversation_history), params: {
      project_conversation_history: { project_status: "ongoing" }
    }
    assert_redirected_to root_url
    @project_conversation_history.reload
    assert_equal "ongoing", @project_conversation_history.project_status
  end

end
