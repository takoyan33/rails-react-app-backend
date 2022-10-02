Rails.application.routes.draw do
  resources :posts
  
  root to: redirect('api/v1/todos')

get 'todos', to: 'site#index'
get 'todos/new', to: 'site#index'
get 'todos/:id/edit', to: 'site#index'

namespace :api do
  namespace :v1 do
    delete '/todos/destroy_all', to: 'todos#destroy_all'
    resources :todos, only: %i[index show create update destroy]
  end
end

  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "graphql#execute"
  end
  post "/graphql", to: "graphql#execute"
  
end
