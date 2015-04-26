Rails.application.routes.draw do
<<<<<<< HEAD
 
 


=======
>>>>>>> 73d6f0f22340e5f3c29c8c979d89e767499df9ab
  resources :posts

  get 'about' => 'welcome#about'

  root to: 'welcome#index'

  
end
