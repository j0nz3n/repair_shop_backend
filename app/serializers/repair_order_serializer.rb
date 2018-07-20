class RepairOrderSerializer < ActiveModel::Serializer
  attributes :id, :date_in, :date_due, :date_out, :complaint, :diagnosis, :repair_action, :user_rating
  has_one :device_id
  has_one :user_id
end
