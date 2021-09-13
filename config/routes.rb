Rails.application.routes.draw do

  get 'products/', to: "products#index", as:  "products_index"
  get 'products/:id', to: "products#show", as:  "products_show"
  get 'cargos/index'
  post 'cargos/import'
end
