class ListsController < ApplicationController
  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.user_id = current_user.id
    if @list.save
      flash[:notice] = "You have created a new list."
      redirect_to user_path(@list.user_id)
    else
      render :new
    end  
  end


  def destroy
    list = List.find(params[:id])
    user = list.user_id
    list.destroy
    redirect_to user_path(user), notice: "Your list has been deleted"
  end

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
    @item = Item.new(list_id: params[:id])
  end

  def update
  end

  private

  def list_params
    params.require(:list).permit(:title, :description, :user_id, :id)
  end
end
