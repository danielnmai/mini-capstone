class CartedProductController < ApplicationController
  before_action :authenticate_user!
  def index
    @order = Order.find_by(user_id: current_user.id, completed: false)

    if @order.carted_products.length > 0
      @carted_products = @order.carted_products
      render 'index'
    else
      flash[:warning] = 'Your cart is empty'
      redirect_to '/'

    end
  end
  def create
    @order = Order.find_by(user_id: current_user.id, completed: false)

    unless @order
      @order = Order.create(
        user_id: current_user.id,
        subtotal: @subtotal,
        tax: @tax, total: @total,
        completed: false
      )
    end
    @carted_product = CartedProduct.create(
      product_id: params[:product_id],
      order_id: @order.id,
      quantity: params[:quantity]
    )
    redirect_to '/carted_products'
  end

 

  def destroy
    carted_product = CartedProduct.find_by(id: params[:id])
    carted_product.destroy
    flash[:warning] = 'Item deleted'
    redirect_to '/carted_products'

  end
end
