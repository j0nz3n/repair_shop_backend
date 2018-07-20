class DeviceSerializer < ActiveModel::Serializer
  attributes :id, :make, :model, :serial_number
  has_one :user_id
end
