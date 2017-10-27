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
  def order
    order = Order.new
    if session[:user_id]
      current_user = User.find_by(id: session[:user_id])
      selected_product = Item.find_by(id: order_param[:item_id])
      order.receiver_name = current_user.name
      order.receiver_address = order_param[:receiver_address]
      order.receiver_number = current_user.phone_number
      order.receiver_email = current_user.email
      order.product_name = selected_product.name
      order.product_price = selected_product.price
      if order.save
        OrderMailer.send_email(order).deliver
        redirect_to root_path
        flash[:success] = "Order sent successfully. Check your mail for order details"
      end
    end
  end
  private
  def add_item_param
    params.require(:item).permit(:name, :price, :category, :image)
  end
  def search_param
    params.require(:search).permit(:keyword)
  end
  def order_param
    params.require(:order).permit(:receiver_address, :item_id)
  end
end