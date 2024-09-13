class Comment < ApplicationRecord
    belongs_to :project_conversation_history

    validates :body, presence: true
end
