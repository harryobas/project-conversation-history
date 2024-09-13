require "test_helper"

class ProjectConversationHistoryTest < ActiveSupport::TestCase
  fixtures :all 
  def setup 
    @project_conversation_history = project_conversation_histories(:one)
  end

  test "should be valid" do
    assert @project_conversation_history.valid?
    #assert_equal @project_conversation_history.title, project_conversation_histories(:one).title
  end

  test 'title should be present' do
    @project_conversation_history.title = ""
    assert_not @project_conversation_history.valid?
    assert_equal ["can't be blank"], @project_conversation_history.errors[:title]
  end

  test 'project_status should be present' do
    @project_conversation_history.project_status = ""
    assert_not @project_conversation_history.valid?
    assert_equal ["can't be blank"], @project_conversation_history.errors[:project_status]
  end

  test "should have many comments" do
    assert_respond_to @project_conversation_history, :comments
  end

end
