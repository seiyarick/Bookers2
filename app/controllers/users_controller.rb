class UsersController < ApplicationController


  def edit
    @user = current_user



  end

  def show
    @user = User.find(params[:id])
    @book = Book.new
    @users = User.all
    @books = @user.books#showの一番上にある@userにbooksがプラスで、1:nの法則
  end

  def index
    @user = current_user
    @book= Book.new
    @users = User.all

  end

  def update
    @user = current_user
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end

private

def user_params
  params.require(:user).permit(:name,:introduction,)
end



end
