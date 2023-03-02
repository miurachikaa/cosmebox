class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:show, :edit, :update]

  def show
    @items = @user.items.includes(:user)
    @foundation = Category.find(2)
    @concealer = Category.find(3)
    @powder = Category.find(4)
    @eyebrow = Category.find(5)
    @eyeliner = Category.find(6)
    @eyeshadow = Category.find(7)
    @mascara = Category.find(8)
    @lip = Category.find(9)
    @cheek = Category.find(10) 
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

end
