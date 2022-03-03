class UsersController < ApplicationController

  def create
    @user = User.new(user_params)

    if @user.save
      flash[:notice] = 'Welcome! You have signed up successfully.'
      redirect_to user_path(@user.id)
    else
      render :new
    end

  end


  def edit
    @user = current_user
     if @user== current_user
       render:edit
     else
       redirect_to _path(@user.id)
     end

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
    if @user.update(user_params)
       flash[:notice] = 'You have updated user successfully.'
    redirect_to user_path(@user.id)
    else
       @user = current_user
    render:edit
    end
  end

  def destroy
    @user = current_user
    if @user.destroy
      flash[:notice] = "Signed out successfully."
      redirect_to root_path
    end
  end

private

def user_params
  params.require(:user).permit(:name,:introduction,)
end



end
