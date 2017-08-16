class LineItem < ApplicationRecord
  belongs_to :order, optional: true
  belongs_to :product, optional: true
  belongs_to :cart

  def total_price
    if self.product.price && self.quantity
      self.product.price * self.quantity
    else
      "0.0".to_d
    end
  end
end
