class ClothsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :destroy]
  before_action :set_cloth, only: [:show, :edit]


  def index
  end

  def new
    @cloth = Cloth.new
  end

  def create
    @cloth = Cloth.new(cloth_params)
    if @cloth.save
      redirect_to "/users/#{current_user.id}"
    else
      render :new
    end
  end

  def show
  end

  def edit
  end
  
  def update
    cloth = Cloth.find(params[:id])
    if cloth.update(cloth_params)
      redirect_to cloth_path
    else
      render :edit
    end
  end

  def destroy
    cloth = Cloth.find(params[:id])
    cloth.destroy
    redirect_to "/users/#{current_user.id}"
  end
  

  private

  def cloth_params
    params.require(:cloth).permit(:wear_day, :image).merge(user_id: current_user.id)
  end

  def set_cloth
    @cloth = Cloth.find(params[:id])
  end

end

