class AuthorsController < ApplicationController
  #GET /authors
  def index
    @authors = Author.all
    render json: @authors, status: :ok
  end
end