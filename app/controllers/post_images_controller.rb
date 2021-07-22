class PostImagesController < ApplicationController

  def new
  end

  def create
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
