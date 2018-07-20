class Device < ApplicationRecord
  belongs_to :user
  has_many :repair_orders
end
