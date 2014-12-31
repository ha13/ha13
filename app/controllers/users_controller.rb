class UsersController < ApplicationController
  before_action :logged_in_user, only: [:index,:edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update]
  before_action :admin_user, only: :destroy
  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)
    if @user.save
      log_in(@user)
      UserMailer.welcome_email(@user)
      flash[:success] = "Signup successfully"
      redirect_to users_path
    else
      render "new"
    end
  end
  def show
    @user = User.friendly.find(params[:id])
  end
  def index
    @users = User.paginate(page: params[:page], per_page: 20)
  end
  def edit
    @user = User.friendly.find(params[:id])
  end
  def update
    @user = User.friendly.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "update a user successfully"
      redirect_to @user
    else
      render 'edit'
    end
  end
  def destroy
  end
  private
  def user_params
    params.require(:user).permit(:name,:email,:password,:password_confirmation)
  end
  def logged_in_user
    unless logged_in?
      flash[:danger] = "Please login"
      redirect_to login_path
    end
  end
  def correct_user
    @user = User.find(params[:id])
    redirect_to users_path unless correct_user?(@user)
  end
  def admin_user
    redirect_to users_path unless current_user.admin?
  end
end
