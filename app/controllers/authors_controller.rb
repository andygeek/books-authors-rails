class AuthorsController < ApplicationController
  
  # GET /authors
  # Lista de todos los autores registrados
  def index
    @authors = Author.all
    render json: @authors, status: :ok
  end
end