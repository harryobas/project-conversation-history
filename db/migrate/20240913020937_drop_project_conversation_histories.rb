class DropProjectConversationHistories < ActiveRecord::Migration[6.1]
  def change
    drop_table :project_conversation_histories
  end
end
