class ComicsController < ApplicationController

def index
    comics = Comic.all
    render json: comics
end

def show
  comic = Comic.find_by(id: params[:id])
  render json: comic
end

def create
  comic = Comic.new( 
    name: params[:name], 
    price: params[:price],
    genre: params[:genre]
  )
  if comic.save #happy path
    render json: comic
  else #sad path
    render json: {error_message: comic.errors.full_messages}, status: 422
  end
end

def update
  comic_id = params[:id]
  comic = Comic.find(comic_id)

  comic.name = params[:name] || comic.name
  comic.price = params[:price] || comic.price

  if comic.save #happy path
    render json: comic
  else #sad path
    render json: {error_message: comic.errors.full_messages}, status: 422
  end
end

def destroy
  comic_id = params[:id]
  comic = Comic.find(comic_id)
  comic.destroy
  render json: {message: "Comic has been destroyed!!!"}
end

# def manga

#   headers = {
#     "X-RapidAPI-Host" => "jikan1.p.rapidapi.com",
#     "X-RapidAPI-Key" => "#{Rails.application.credentials.anime_api[:api_key]}"
#   }

#   response = HTTP.headers(headers).get("https://jikan1.p.rapidapi.com/meta/requests/anime/today")

#   data = JSON.parse(response)

#   render json: data

# end

def manga
  response = HTTP.get("https://api.jikan.moe/v4/manga")

  data = JSON.parse(response)

  render json: data
end

end
