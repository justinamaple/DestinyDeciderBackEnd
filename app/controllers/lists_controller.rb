class ListsController < ApplicationController
  before_action :set_list, only: [:show, :update]

  def index
    render json: List.all
  end

  def show
    render json: @list
  end

  def create
    @list = List.new(
      user_id: params[:user_id],
      weapons: params[:weapons]
    )

    if @list.save
      render json: @list
    else
      render json: @list.errors
    end
  end

  def update
    p params
    if @list.update(list_params)
      render json: @list
    else
      render json: @list.errors
    end
  end

  private

  def set_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:user_id, weapons: [])
  end
end
