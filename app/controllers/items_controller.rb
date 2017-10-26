class ItemsController < ApplicationController
  include SessionsHelper
  def add_item
    @item = Item.new(add_item_param)
    if @item.save
      flash[:success] = "Item added successfully!"
      redirect_to root_path
    end
  end
  def search_items
    save_search_keyword search_param[:keyword]
    redirect_to root_path
  end
  def breakfast
    save_search_keyword 'breakfast'
    redirect_to root_path
  end
  def lunch
    save_search_keyword 'lunch'
    redirect_to root_path
  end
  def dinner
    save_search_keyword 'dinner'
    redirect_to root_path
  end
  def dessert
    save_search_keyword 'dessert'
    redirect_to root_path
  end
  def fruits
    save_search_keyword 'fruit'
    redirect_to root_path
  end
  private
  def add_item_param
    params.require(:item).permit(:name, :price, :category, :image)
  end
  def search_param
    params.require(:search).permit(:keyword)
  end
end
