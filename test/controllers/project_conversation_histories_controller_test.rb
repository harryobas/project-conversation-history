require "test_helper"

class ProjectConversationHistoriesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @project_conversation_history = project_conversation_histories(:two)
  end

  test 'should render new project conversation page' do 
    get root_url
    assert_response :success
    assert_select 'h1', 'New Project Conversation'
  end

  test "should create project conversation history" do
    assert_difference('ProjectConversationHistory.count') do
      post project_conversation_histories_path, params: { 
        project_conversation_history: { title: "New Project", project_status: 'pending' }
      }
        
    end
  end

  test 'should raise error when creating project conversation history with empty title' do
    assert_no_difference('ProjectConversationHistory.count') do
      post project_conversation_histories_path, params: { 
        project_conversation_history: { title: "", project_status: 'pending' }
      }
      assert_select 'h4', 'There were errors:'
    end
  end

  test "should show project conversation history" do
    get project_conversation_history_path(@project_conversation_history)
    assert_response :success
    assert_select 'h1', @project_conversation_history.title
    assert_select 'p', @project_conversation_history.project_status
  end


  test "should update project status" do
    patch project_conversation_history_path(@project_conversation_history), params: {
      project_conversation_history: { project_status: "ongoing" }
    }
    assert_redirected_to project_conversation_history_path @project_conversation_history
    @project_conversation_history.reload
    assert_equal "ongoing", @project_conversation_history.project_status
  end

end
