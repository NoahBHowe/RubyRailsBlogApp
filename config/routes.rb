Rails.application.routes.draw do
    root to: redirect("/posts")

    # get "/posts" => "posts#index"
    # get "/posts/:id" => "posts#show"
    # post "/posts" => "posts#create"
    # put "/posts/:id" => "posts#update"
    # delete "/posts/:id" => "posts#destroy"

    resources :posts
end
