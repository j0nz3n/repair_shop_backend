# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :devices
  has_many :repair_orders
end
