class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:show, :edit, :update]
  before_action :prevent_url, only: [:edit]

  def show
    @items = @user.items.includes(:user)
  end

  def edit
  end

  def update
    if @user.id == current_user.id 
      @user.update(user_params)
      redirect_to user_path(@user.id)
    else
      render :edit
    end 
  end

  def search
    @q = User.ransack(params[:q])
    @results = @q.result(distinct: true)
  end

  private

  def user_params
    params.require(:user).permit(:nickname, :age_id, :skin_type_id, :personal_color_id, :face_type_id)
  end

  def set_user
    @user = User.find(params[:id])
  end

  def prevent_url
    if @user_id != current_user.id
      redirect_to root_path
    end
  end
end
