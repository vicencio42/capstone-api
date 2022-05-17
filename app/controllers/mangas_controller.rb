class MangasController < ApplicationController

  def manga
    response = HTTP.get("https://api.jikan.moe/v4/manga")
  
    data = JSON.parse(response)
  
    render json: data
  end
end
