Rails.application.routes.draw do
  
  

  get "welcome/index"
  
  get '/articles', to: "articles#index"
  get '/articles/:id', to: "articles#show"
  post "/articles", to: "articles#create"
  patch "/articles/:id", to: "articles#update"
  delete "/articles/:id", to: "articles#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "welcome#index"
end
