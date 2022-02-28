class BooksController < ApplicationController
  def new
  end

  def create
    @book = Book.new(book_params)
    @book = current_user.id
    @book.save
    redirect_to book_path(@book.id)
  end

  def index
  end

  def show
  end

  def edit
  end

  private

  def book_params
    params.require(:book).permit(:title, :opinion)
  end
end
