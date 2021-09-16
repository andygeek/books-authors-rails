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
end