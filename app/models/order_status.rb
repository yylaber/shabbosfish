class OrderStatus < ActiveRecord::Base
  has_many :orders
  # validates :user, presence: true
end