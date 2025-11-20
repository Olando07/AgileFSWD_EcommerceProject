class Order < ApplicationRecord
  belongs_to :users
  has_many :menu_orders
  has_many :menus, through: :menu_orders
  has_many :order_histories
end
