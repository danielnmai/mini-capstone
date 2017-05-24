class Product < ApplicationRecord

    belongs_to :supplier
    has_many :images
    
    has_many :carted_products
    has_many :orders, through: :carted_products
    

    has_many :category_products
    has_many :categories, through: :category_products

  

  def sale_message
   price < 2.00 ?  "Discount Item!!" : "Everyday Value!!" 
    
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end


end
