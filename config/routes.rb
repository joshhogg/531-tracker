Rails.application.routes.draw do

  root 'lifters#index'
  
  resources :lifters do
    resources :one_rep_maxes do
      get '/plan' => 'workouts#show' 
    end
  end

end
