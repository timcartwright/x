# == Schema Information
#
# Table name: clues
#
#  id          :integer          not null, primary key
#  location_id :integer
#  riddle      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class ClueSerializer < ActiveModel::Serializer
  attributes :id, :riddle
  has_one :location
end
