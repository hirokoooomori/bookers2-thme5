class BooksController < ApplicationController

    def show
      @book = Book.new
    end

    def create
      book = Book.new(book_params)
      book.save
      redirect_to '/'
    end

    def index
      @books = Book.all
    end

    private
  def book_params
    params.require(:book).permit(:title, :opinion)
  end

end
