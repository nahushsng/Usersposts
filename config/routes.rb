Rails.application.routes.draw do
  resources :event_users
  resources :events
  resources :users
  resources :app_settings
  resources :template_ones 
    resources :posts do
      resources :comments 
    end
  
  root to: 'template_ones#index'
    
  # I've created a gif controller so I have a page I can secure later. 
  # This is optional (as is the root to: above).
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  get '/cool' => 'gif#cool'
  get '/sweet' => 'gif#sweet'
  # These routes will be for signup. The first renders a form in the browse, the second will 
  # receive the form and create a user in our database using the data given to us by the user.
  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  post '/book' => 'event_users#create'

end
