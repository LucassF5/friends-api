Rails.application.routes.draw do
  get 'users/new'

  namespace :api do
    namespace :v1 do
      get "friends", to: "friends#index"
      post "friends", to: "friends#create"
      get "friends/:id", to: "friends#show"
      patch "friends/:id", to: "friends#update"
      delete "friends/:id", to: "friends#destroy"
    end
  end
end
