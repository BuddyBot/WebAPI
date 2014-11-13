class PurchasedProduct < ActiveRecord::Base
  belongs_to :user
  belongs_to :product

  def self.purchased?(product_id)
    if all.select {|x| x.product_id == product_id}.empty? then
      false
    else
      true
    end
  end

end
