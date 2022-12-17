Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :test, only: %i[index]

      mount_devise_token_auth_for 'User', at: 'auth', controllers: {
        registrations: 'api/v1/auth/registrations'
      }

      namespace :auth do
        resources :sessions, only: %i[index]
      end

      delete '/newss/destroy_all', to: 'newss#destroy_all'
      resources :newss, only: %i[index show create update destroy]

      # delete '/todos/destroy_all', to: 'todos#destroy_all'
      # resources :todos, only: %i[index show create update destroy]
    end
  end

  # namespace :v1 do
  #   mount_devise_token_auth_for "User", at: "auth"
  # end
  # namespace :api do
  #   namespace :v1 do

  #   end
  # end

  resources :posts

  root to: redirect('api/v1/newss')

  get 'newss', to: 'site#index'
  get 'newss/new', to: 'site#index'
  get 'newss/:id/edit', to: 'site#index'

  
  # root to: redirect('api/v1/todos')

  # get 'todos', to: 'site#index'
  # get 'todos/new', to: 'site#index'
  # get 'todos/:id/edit', to: 'site#index'

  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "graphql#execute"
  end
  post "/graphql", to: "graphql#execute"
  
end
