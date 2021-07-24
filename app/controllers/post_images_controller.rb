class PostImagesController < ApplicationController

  def new
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to '/'
  end

  def index
  end

  def show
     @book = Book.new
  end

  def destroy
  end

  private
  def book_params
    params.require(:book).permit(:title, :opinion)
  end

end
