CustomerKonnect::Application.routes.draw do
  root :to => "shoppers#index", as: "home"
end
