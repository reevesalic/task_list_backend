Rails.application.routes.draw do
  resources :categories
  namespace :api do
    namespace :v1 do
      resources :tasks
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
end
end
