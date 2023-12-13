Rails.application.routes.draw do
  # get 'posts/new'
  # post 'posts' => 'posts#create'
  resources :posts
  get 'top' => 'homes#top'
  get "up" => "rails/health#show", as: :rails_health_check

end
