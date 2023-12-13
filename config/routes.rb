Rails.application.routes.draw do
  devise_for :users
  # get 'posts/new'
  # post 'posts' => 'posts#create'
  resources :posts
  root :to => 'homes#top'
  get "up" => "rails/health#show", as: :rails_health_check

end
