CustomerKonnect::Application.routes.draw do
<<<<<<< HEAD
  root :to => "shoppers#index", as: "home", via: "get"
  match '/businesses', to: 'businesses#index', via: "get", as: :business
  match '/businesses', to: 'businesses#index', via: "patch", as: :business
  match '/businesses/show/:id', to: 'businesses#show', via: "get",as: :show_business
  match '/businesses/new', to: 'businesses#new', via: "get"
  match '/businesses/:id/edit', to: 'businesses#edit', via: "get", as: :edit_business
  match '/businesses', to: 'businesses#create', via: "post"
  match '/businesses/update/:id', to: 'businesses#update',  via: "put"
  match '/businesses/destroy/:id', to: 'businesses#destroy', via: "delete", as: :destroy_business
  get "feedback/new"
  resources :feedback
end
