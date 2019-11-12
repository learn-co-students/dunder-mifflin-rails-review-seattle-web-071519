Rails.application.routes.draw do
  resources :dogs, except: [:new, :create]
  resources :employees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/dogs', to: 'dogs#sorted_index'
end
