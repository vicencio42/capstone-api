Rails.application.routes.draw do

   #comics
   get "/comics" => "comics#index"
   post "/comics" => "comics#create"
   get "/comics/:id" => "comics#show"
   patch "/comics/:id" => "comics#update"
   delete "/comics/:id" => "comics#destroy"

   # users
   post "/users" => "users#create"

   #wishlist
   get "/wishlists" => "wishlists#index"
   post "/wishlists" => "wishlists#create"
   get "/wishlists/:id" => "wishlists#show"
   patch "/wishlists/:id" => "wishlists#update"
   delete "/wishlists/:id" => "wishlists#destroy"

   #sessions
   post "/sessions" => "sessions#create"

   # # manga
   get "/mangas" => "mangas#manga"
  
end
