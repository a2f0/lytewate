Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "lyte#index"
  resources :lytes
  resources :user_tags
end
