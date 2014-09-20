CustomerKonnect::Application.routes.draw do
  get "feedback/new"
  root :to => "shoppers#index", as: "home"
  resources :feedback
end
