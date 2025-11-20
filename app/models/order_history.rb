class OrderHistory < ApplicationRecord
  has_many :order
  has_many :user, optional: true
end
