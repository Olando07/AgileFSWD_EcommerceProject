class User < ApplicationRecord
  belongs_to :province
  has_many :orders 
  has_many :order_histories 
end
