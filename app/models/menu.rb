class Menu < ApplicationRecord
  has_many :menu_orders
  has_many :orders, through: :menu_orders
end
