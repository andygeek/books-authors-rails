class BooksController < ApplicationController

  # GET /books
  # Lista de todos los libros registrados
  def index
    @books = Book.all
    render json: @books, status: :ok
  end

  # GET /books/{id}
  # Entrega el libro buscado por su id
  def show
    @book = Book.find(params[:id])
    if @book.present?
      render json: @book, status: :ok
    else
      render json: {error: 'Not found'}, status: :not_found
    end
  end
end