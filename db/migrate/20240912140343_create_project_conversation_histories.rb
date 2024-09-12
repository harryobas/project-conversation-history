class CreateProjectConversationHistories < ActiveRecord::Migration[6.1]
  def change
    create_table :project_conversation_histories do |t|
      t.integer :project_status, null: false, default: 0
      t.references :comments, null: false, foreign_key: true

      t.timestamps
    end
  end
end
