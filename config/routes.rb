Rails.application.routes.draw do

  resources :table_submissions
  resources :submissions
  devise_for :users

  get 'pages/submission_tracker'
  get 'pages/home'
  root "pages#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
