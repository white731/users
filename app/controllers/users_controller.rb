class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new()
  end

  def create
    @user = User.new(user_params)

    #Why is this Necessary??
    if @user.save
    redirect_to users_path
    else
    render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    # How is updating happening?
    if @user.update(user_params)
      redirect_to users_path
    else
      render :edit
    end
  end
    
  def destroy
  end
  def edit
    @user = User.find(params[:id])

  end

  private

  def user_params
    params.require(:user).permit(:full_name, :age, :gender, :alive)
  end
  
end
