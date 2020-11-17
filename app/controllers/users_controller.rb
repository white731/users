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

  def edit
    @user = User.new(user_params)
  end

  def user_params
    params.require(:user).permit(:full_name, :age, :gender, :alive)
  end
  
end
