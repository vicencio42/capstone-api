class ComicsController < ApplicationController

  def index
    comics = Comic.all
    render json: comics
  end

def show
  comic = Comic.find_by(id: params["id"])
  render json: comic
end

def create
  comic = Comic.new( 
    name: params["name"], 
    price: params["price"],
    description: params["description"]
  )
  if comic.save #happy path
    render json: comic
  else #sad path
    render json: {error_message: comic.errors.full_messages}, status: 422
  end
end

def update
  comic_id = params["id"]
  comic = Comic.find(comic_id)

  comic.name = params["name"] || comic.name
  comic.price = params["price"] || comic.price
  comic.description = params["description"] || comic.description

  if comic.save #happy path
    render json: comic
  else #sad path
    render json: {error_message: comic.errors.full_messages}, status: 422
  end
end

def destroy
  comic_id = params["id"]
  comic = Comic.find(comic_id)
  comic.destroy
  render json: {message: "Product has been destroyed!!!"}
end

end
