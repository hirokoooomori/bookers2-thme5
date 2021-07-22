class BooksController < ApplicationController

    def show
     @book = Book.new
    end

    def index
    end

    private
  def book_params
    params.require(:book).permit(:title, :opinion)
  end

end
