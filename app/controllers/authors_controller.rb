class AuthorsController < ApplicationController
  
  # GET /authors
  # Lista de todos los autores registrados
  def index
    @authors = Author.all
    render json: @authors, status: :ok
  end

  # GET /authors/{id}
  # Entrega el autor buscado por su id
  def show
    @author = Author.find(params[:id])
    if @author.present?
      render json: @author, status: :ok
    else
      render json: {error: 'Not found'}, status: :not_found
    end
  end

  # POST /authors
  # Crea un nuevo autor
  def create
    @author = Author.create(create_params)
    if @author.present?
      render json: @author, status: :ok
    else
      render json: {error: 'Not create'}, status: :error
    end
  end

  # PUT /authors/{id}
  # Actualiza la información de los actores.
  def update
    @author = Author.find(params[:id])
    if @author.update!(update_params)
      render json: @author, status: :ok
    else
      render json: {error: 'Not update'}, status: :error
    end
  end

  private
  
  def create_params
    params.require(:author).permit(:name, :last_name, :age)
  end

  def update_params
    params.require(:author).permit(:name, :last_name, :age)
  end
end