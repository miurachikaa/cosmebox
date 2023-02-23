class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.id == current_user.id 
      @user.update(user_params)
      redirect_to user_path(@user.id)
    else
      render :edit
    end 
  end

  def search
    @q = User.ransack(params[:q])
    @users = @q.result
  end

  private

  def user_params
    params.require(:user).permit(:nickname, :age_id, :skin_type_id, :personal_color_id, :face_type_id)
  end

end
