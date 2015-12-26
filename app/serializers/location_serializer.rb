# == Schema Information
#
# Table name: locations
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string
#  lat         :decimal(, )
#  long        :decimal(, )
#  game_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  clue        :text
#

class LocationSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :lat, :long
  has_one :game
end
