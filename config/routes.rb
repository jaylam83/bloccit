Rails.application.routes.draw do


  get 'topics/create'

  get 'users/update'

  devise_for :users
  resources :users, only: [:update]
 
  resources :topics do
    resources :posts, except: [:index]
    resources :comments, only: [:create]
  end

  get 'about' => 'welcome#about'

  root to: 'welcome#index'

  
end
