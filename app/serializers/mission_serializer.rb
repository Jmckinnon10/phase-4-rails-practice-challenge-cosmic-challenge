class MissionSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_one :scientist_id
  has_one :planet_id
end
