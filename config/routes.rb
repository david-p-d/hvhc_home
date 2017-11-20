Rails.application.routes.draw do

  devise_for :users
  get 'users/sign_up'
  get 'pages/submission_tracker'
  get 'pages/home'
  root "pages#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
