class GenresController < ApplicationController

  # GET /genres
  # Lista de todos los generos registrados
  def index
    @genres = Genre.all
    render json: @genres, status: :ok
  end

  # GET /genres/{id}
  # Entrega el genero buscado por su id
  def show
    @genre = Genre.find(params[:id])
    if @genre.present?
      render json: @genre, status: :ok
    else
      render json: {error: 'Not found'}, status: :not_found
    end
  end

  # POST /genre/
  # Crea un nuevo genero
  def create
    @genre = Genre.create(create_params)
    if @genre.present?
      render json: @genre, status: :ok
    else
      render json: {error: 'Not create'}, status: :error
    end
  end

  # PUT /genres/{id}
  # Actualiza la informacion de un género
  def update
    @genre = Genre.find(params[:id])
    if @genre.update!(update_params)
      render json: @genre, status: :ok
    else
      render json: {error: 'Not update'}, status: :error
    end
  end

  private

  def create_params
    params.require(:genre).permit(:name)
  end

  def update_params
    params.require(:genre).permit(:name)
  end

end