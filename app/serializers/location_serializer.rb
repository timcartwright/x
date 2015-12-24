class LocationSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :lat, :long
  has_one :game
end
