class CreateProjectConversationHistories < ActiveRecord::Migration[6.1]
  def change
    create_table :project_conversation_histories do |t|
      t.string :project_status
      t.references :conversations, null: false, foreign_key: true

      t.timestamps
    end
  end
end
