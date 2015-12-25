# == Schema Information
#
# Table name: tasks
#
#  id          :integer          not null, primary key
#  question    :string
#  answer      :string
#  location_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class TaskSerializer < ActiveModel::Serializer
  attributes :id, :question, :answer
  has_one :location
end
