Rails.application.routes.draw do


  resources :summaries do
    resources :posts, except: [:index]
  end

  devise_for :users
 
  resources :topics do
    resources :posts, except: [:index]
  end

  get 'about' => 'welcome#about'

  root to: 'welcome#index'

  
end
