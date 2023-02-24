class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def create
    @list = List.new(x_params)
    if @list.save
      redirect_to lists_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def new
    @list = List.new
  end

  private

  def x_params
    params.require(:list).permit(:name)
  end
end


# if @list.save #
