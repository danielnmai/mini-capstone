class Product < ApplicationRecord

    belongs_to :supplier
    has_many :images

  

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
