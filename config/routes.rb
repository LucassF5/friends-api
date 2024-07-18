Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      get "friends", to: "friends#index"
      post "friends", to: "friends#create"
    end
  end
end
