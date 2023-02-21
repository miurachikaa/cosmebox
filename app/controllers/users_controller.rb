class UsersController < ApplicationController
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
    end
    unless @user.save
      render :edit
    end 
  end

  private

  def user_params
    params.require(:user).permit(:nickname, :age_id, :skin_type_id, :personal_color_id, :face_type_id)
  end

end
