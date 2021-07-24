class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def create
    book = Book.new(book_params)
    book.save
  redirect_to '/'
  end

  def index
    @users = User.all
    @user = User.find(current_user.id)
  end

  private
  def user_params
    params.require(:user).permit(:name)
  end

end
