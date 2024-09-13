class AddProjectConversationHistoryIdToComments < ActiveRecord::Migration[6.1]
  def change
    add_reference :comments, :project_conversation_history, foreign_key: true
  end
end
