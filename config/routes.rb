CustomerKonnect::Application.routes.draw do
  root :to => "shoppers#index", as: "home", via: "get"
  match '/businesses', to: 'businesses#index', via: "get", as: :business
  match '/businesses', to: 'businesses#index', via: "patch", as: :business_patch
  match '/businesses/show/:id', to: 'businesses#show', via: "get",as: :show_business
  match '/businesses/new', to: 'businesses#new', via: "get",as: :signup
  match '/businesses/:id/edit', to: 'businesses#edit', via: "get", as: :edit_business
  match '/businesses', to: 'businesses#create', via: "post"
  match '/businesses/update/:id', to: 'businesses#update',  via: "put"
  match '/businesses/destroy/:id', to: 'businesses#destroy', via: "delete", as: :destroy_business
  match '/businesses/feedback/:id', to: 'businesses#feedback', via: "get", as: :get_feedback_business
  get "feedback/new", as: :give_feedback
  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  resources :feedback
  resources :sessions
end
