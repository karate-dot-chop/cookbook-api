Rails.application.routes.draw do
  get "/recipes", controller: "recipes", action: "index"
  post "/recipes", controller: "recipes", action: "create"
  get "/recipes/:id", controller: "recipes", action: "show"
  patch "/recipes/:id", controller: "recipes", action: "update"
  delete "/recipes/:id", controller: "recipes", action: "destroy"
end