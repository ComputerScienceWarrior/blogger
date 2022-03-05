class UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update, :destroy]
  def index
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def destroy
    @user.blogs.destroy_all
    @user.destroy
    redirect_to root_path
  end

  private 

  def user_params
    params.require(:user).permit(:first_name, :last_name, :username, :password, :email)
  end

  def find_user
    @user = User.find(params[:user_id])
  end
end
