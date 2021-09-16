class BooksController < ApplicationController

  # GET /books
  # Lista de todos los libros registrados
  def index
    @books = Book.all
    render json: @books, status: :ok
  end

end