class ImagesController < ApplicationController


  def new
    @product = Product.find(params[:id])
    render 'new'
  end

  def create
    image = Image.create(
      url: params[:url],
      product_id: params[:id]
      )
    redirect_to "/products/#{params[:id]}"
  end
end
