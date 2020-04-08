Rails.application.routes.draw do
  get "produtos", to: "produtos#index"
  get "produtos/new", to: "produtos#new"
  post "produtos", to: "produtos#create"
  root to: "produtos#index"
end
