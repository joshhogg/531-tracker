Rails.application.routes.draw do

  devise_for :lifters
  root 'one_rep_maxes#index'
  
  resources :lifters, only: [:index] do
    get '/new_week' => 'one_rep_maxes#new_week'
    resources :one_rep_maxes, only: [:new, :create, :index] do
      get '/plan' => 'workouts#show' 
    end
  end

end
