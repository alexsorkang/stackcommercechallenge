Rails.application.routes.draw do
  devise_for :admins
  root 'tweets#new'
  resources :tweets

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
