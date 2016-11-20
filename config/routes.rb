Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :pets, except: [:destroy, :create, :update]

  put '/pets/:id/dibs', to: 'pets#dibs', as: 'dibs'
end
