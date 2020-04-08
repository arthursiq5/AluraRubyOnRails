Rails.application.routes.draw do
  get "produtos", to: "produtos#index"
  get "produtos/new", to: "produtos#new"
  root to: "produtos#index"
end
