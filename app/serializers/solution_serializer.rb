# == Schema Information
#
# Table name: solutions
#
#  id         :integer          not null, primary key
#  player_id  :integer
#  clue_id    :integer
#  solved     :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class SolutionSerializer < ActiveModel::Serializer
  attributes :id, :solved
  has_one :player
  has_one :clue
end
