Rails.application.routes.draw do
  root 'project_conversation_histories#show_single'
  
  resources :project_conversation_histories, only: [:edit, :update]
  resources :comments, only: [:create]
end
