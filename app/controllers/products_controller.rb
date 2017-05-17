class ProductsController < ApplicationController
  def show
    if params[:id] == "random"
      @product = Product.all.sample
    else
      @product = Product.find(params[:id])
    end
    render "show.html"
  end

  def index
    @products = Product.all

    sort = params[:sort]
    sort_order = params[:order]
    discounted_item = params[:discount]
    search_term = params[:search_term]


    if sort
      @products = Product.all.order(sort => sort_order)
    end

    if discounted_item
      @products = Product.where("price < ?", 2.00) 
    end

    if search_term

      @products = Product.where("name LIKE ?", "%#{search_term.capitalize}%")      
    end
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
    @supplier_id = params[:supplier]["supplier_id"]

    product = Product.create(name: @name, origin: @origin, price: @price, description: @description, supplier_id: @supplier_id)

    flash[:info] = "Product successfully created."
    redirect_to "/products/#{product.id}"    
  end

  def edit
    @product = Product.find(params[:id])
    render "edit.html"
  end

  def update
    product = Product.find(params[:id])

    product.update(name: params[:name], origin: params[:origin], price: params[:price], description: params[:description], image: params[:image])

    flash[:success] = "Product successfully updated."

    redirect_to "/products/#{product.id}"    
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy

    flash[:danger] = "Product successfully deleted."

    redirect_to "/products"
  end

  
end
