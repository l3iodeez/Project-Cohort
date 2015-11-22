class Api::CatsController < ApplicationController
  before_action :set_cat, only: [:destroy, :update]

  def index
    @cats = Cat.all
    render :index
  end

  def update
    if @cat.update(cat_params)
      render :show
    else
      render json: @cat.errors.fullmessages, status: :unprocessable_entity
    end
  end

  def create
    @cat = Cat.new(cat_params)
    if @cat.save
      render :show
    else
      render json: @cat.errors.fullmessages, status: :unprocessable_entity
    end
  end

  def destroy
    @cat.destroy
  end

  private
  def set_cat
    @cat = Cat.find(params[:id])
  end
  def cat_params
    params.require(:cat).permit(:name, :race).tap do |whitelisted|
      whitelisted[:catClasses] = params[:cat][:catClasses]
    end
  end
end
