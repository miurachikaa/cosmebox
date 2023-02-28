class ItemsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  before_action :prevent_url, only: [:edit, :destroy]

  def index
    @items = current_user.items.all.order("created_at DESC")
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

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
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
    if @item.update(item_params)
      redirect_to item_path
    else
      render :edit
    end
  end

  def destroy
    @item.destroy
    redirect_to root_path
  end

  def category
    @items = current_user.items.where(category_id: params[:category_id]).order(created_at: :desc)  
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

  private

  def item_params
    params.require(:item).permit(:brand, :category_id, :name, :memo).merge(user_id: current_user.id)
  end

  def set_item
    @item = Item.find(params[:id])
  end

  def prevent_url
    if @item.user_id != current_user.id
      redirect_to root_path
    end
  end

end
