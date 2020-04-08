Rails.application.routes.draw do
  get "produtos", to: "produtos#index"
  get "produtos/new", to: "produtos#new"
  delete "produtos/:id", to: "produtos#destroy", as: :produto
  post "produtos", to: "produtos#create"
  root to: "produtos#index"
end
