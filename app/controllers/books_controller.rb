class BooksController < ApplicationController

    def show
      @newbook = Book.new
      @book = Book.find(params[:id])
      @user = @book.user
    end

    def create
      @newbook = Book.new(book_params)
      @newbook.user_id = current_user.id
      if @newbook.save
        flash[:notice] = "Posted successfully"
        redirect_to book_path(@newbook.id)
      else
        @books = Book.all
        @user = User.find(current_user.id)
         render :index
      end
    end

    def index
      @books = Book.all
      @newbook = Book.new
      @user = User.find(current_user.id)
    end

    def edit
      @book =Book.find(params[:id])
    end

    def update
      @book = Book.find(params[:id])
      if @book.update(book_params)
        flash[:notice] = "Successful update"
        redirect_to book_path(@book)
      else
        render :edit
      end
    end

    def destroy
    @book = Book.find(params[:id])
    if @book.destroy
      flash[:notice]="Book was successfully destroyed."
      redirect_to books_path
    end
    end

    private

    def book_params
      params.require(:book).permit(:title, :body)
    end

end
