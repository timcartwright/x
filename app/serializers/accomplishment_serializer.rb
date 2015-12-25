# == Schema Information
#
# Table name: accomplishments
#
#  id         :integer          not null, primary key
#  player_id  :integer
#  task_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class AccomplishmentSerializer < ActiveModel::Serializer
  attributes :id
  has_one :player
  has_one :task
end
