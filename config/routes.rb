Rails.application.routes.draw do

  get 'registrations/new'

  get 'sessions/new'
  post 'sessions/create'
  delete 'sessions/destroy'

  get 'users/show'
  post 'users/create'

  get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
