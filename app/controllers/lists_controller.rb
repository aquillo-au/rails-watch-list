class ListsController < ApplicationController
  before_action :find_list, only: %i[show]
  def index
    @lists = List.all
    @list = List.new
  end

  def show
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def find_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:name, :poster)
  end
end
