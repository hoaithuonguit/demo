class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart

  def total_price
    if self.product.price && self.quantity
      self.product.price * self.quantity
    else
      "0.0".to_d
    end
  end
end
