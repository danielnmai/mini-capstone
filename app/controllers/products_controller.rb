class ProductsController < ApplicationController
  def show
    @product = Product.find(params[:id])
    render "show.html"
  end

  def index
    @products = Product.all
    render "index.html"
  end

  def new

    render "new.html"
  end

  def create
    @name = params[:name]
    @origin = params[:origin]
    @price = params[:price]
    @description = params[:description]

   Product.create(name: @name, origin: @origin, price: @price, description: @description)
    render "create.html"    
  end

  def edit
    @product = Product.find(params[:id])
    render "edit.html"
  end
end
