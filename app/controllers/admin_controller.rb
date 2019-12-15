class AdminController < ApplicationController

  before_action :set_user, only: [:show, :edit, :update]
  before_action :authenticate_user!
  before_action :is_admin!

  def index
    @users = User.all
  end
  
  def show
    @user = User.find_by_username(params[:id])
  end

  def is_admin!
    if current_user.role != "admin"
    redirect_to root_path
    end
  end

end
