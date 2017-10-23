class ItemsController < ApplicationController
  def add_item
    @item = Item.new(add_item_param)
    if @item.save
      flash[:success] = "Item added successfully!"
      redirect_to root_path
    end
  end

  private
  def add_item_param
    params.require(:item).permit(:name, :price, :category, :image)
  end
end
