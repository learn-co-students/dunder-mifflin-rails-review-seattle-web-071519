Rails.application.routes.draw do
  resources :dogs
  resources :employees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/doggo', to: 'dogs#sort_dog'#, as: 'sort_dog'


end
