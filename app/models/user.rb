class User < ApplicationRecord
  belongs_to :province
  has_many :orders 
  has_many :order_histories 
  has_secure_password

  validates :name, presence: true
  validates :email, presence: true
  validates :street_address, presence: true
  validates :province_id, presence: true
  validates :is_admin, inclusion: [true, false]
end
