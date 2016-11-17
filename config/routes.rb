Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :pets, except: [:destroy, :create, :update]

  post '/pets/call_dibs', to: 'pets#call_dibs', as: 'call_dibs'
end
