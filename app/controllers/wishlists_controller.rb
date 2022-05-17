class WishlistsController < ApplicationController
  def index
    if current_user
      wishlist = current_user.wishlists
      render json: wishlist.as_json
    else
      render json: [], status: :unauthorized
    end
  end

  def show
    user = User.find_by(id: params[:id])
    wishlist = user.wishlists
    render json: wishlist.as_json
  end

  def create
    comic = Wishlist.new(
      user_id: current_user.id,
      comic_id: params[:comic_id],
      image_url: params[:image_url],
      title: params[:title]
    )
    # user = User.find_by(id: current_user.id)
    if comic.save
      render json: {comic: comic}
    
    else
      render json: {errors: comic.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    if current_user
      comic = current_user.wishlists.find_by(id: params[:id])
      comic.destroy
      render json: {message: "Manga removed from wishlist", comic: comic}
    else
      render json: [], status: :unauthorized
    end
  end
end

