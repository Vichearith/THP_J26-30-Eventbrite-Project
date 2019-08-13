Rails.application.routes.draw do
  get 'static_pages/secret'
  devise_for :users
  resources :events
  resources :attendances
  resources :users, except: [:new]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root :to => "events#index"
  get 'contact', to: 'static_pages#contact'
  get 'team', to: 'static_pages#team'
end
