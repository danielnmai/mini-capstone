class OrdersController < ApplicationController
  before_action :authenticate_user!
  def create
    @product = Product.find_by(id: params[:product_id])

    @quantity = params[:quantity]

    @subtotal = @product.price.to_f * @quantity.to_i

    @tax = @subtotal * 0.09
    @total = @subtotal + @tax

    @order = Order.create(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: @quantity,
      subtotal: @subtotal,
      tax: @tax, total: @total
    )
    render 'show'
  end

  def update
    @order = Order.find_by(id: params[:order_id])

    @subtotal = 0

    @order.carted_products.each do |carted_product|
      @subtotal += carted_product.product.price.to_f * carted_product.quantity
    end
    @tax = @subtotal * 0.09
    @total = @subtotal + @tax
    @order.subtotal = @subtotal
    @order.tax = @tax
    @order.total = @total
    @order.completed = true
    @order.save

    redirect_to "/orders/#{@order.id}"
  end

   def show
     @order = Order.find_by(id: params[:order_id])
    render 'show'
  end
end
