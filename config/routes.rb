Rails.application.routes.draw do
  get 'index', to: 'tasks#index', as: :index
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
