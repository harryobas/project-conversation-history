class ProjectConversationHistory < ApplicationRecord
  has_many :comments, dependent: :destroy

  enum project_status: {started: 0, ongoing: 1, completed: 2}
end
