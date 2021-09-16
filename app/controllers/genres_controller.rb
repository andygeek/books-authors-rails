class GenresController < ApplicationController

  # GET /genres
  # Lista de todos los generos registrados
  def index
    @genres = Genre.all
    render json: @genres, status: :ok
  end
end