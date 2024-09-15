Rails.application.routes.draw do
  root 'project_conversation_histories#new'
  get 'search', to: 'project_conversation_histories#search'

  
  resources :project_conversation_histories, only: [:new, :show, :create, :update] do 
    resources :comments, only: [:create]
  end
 
end
