class GenresController < ApplicationController

  #GET /genres
  def index
    @genres = Genre.all
    render json: @genres, status: :ok
  end
end