Rails.application.routes.draw do
  resources :project_conversation_histories do 
    resources :comments, only: [:create] do 
    end
  end
  
end
