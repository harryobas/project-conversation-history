class CreateProjectConversationHistories < ActiveRecord::Migration[6.1]
  def change
    create_table :project_conversation_histories do |t|
      t.string :title
      t.integer :project_status

      t.timestamps
    end
  end
end
