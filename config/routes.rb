Rails.application.routes.draw do
  get "/recipes", controller: "recipes", action: "index"
  post "/recipes", controller: "recipes", action: "create"
  get "/recipes/:id", controller: "recipes", action: "show"
  patch "/recipes/:id", controller: "recipes", action: "update"
  delete "/recipes/:id", controller: "recipes", action: "destroy"

  post "/users", controller: "users", action: "create"
  get "/users/:id", controller: "users", action: "show"
  post "/sessions", controller: "sessions", action: "create"

  get "/*path" => proc { [200, {}, [ActionView::Base.new.render(file: 'public/index.html')]] }

end