Rails.application.routes.draw do
  namespace :v1 do
    resources :users
    resources :tasks
    resources :bodies
    resources :memos
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
