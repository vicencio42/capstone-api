Rails.application.routes.draw do

   #comics
   get "/comics" => "comics#manga"
   post "/comics" => "comics#create"
   get "/comics/:id" => "comics#show"
   patch "/comics/:id" => "comics#update"
   delete "/comics/:id" => "comics#destroy"
  
end
