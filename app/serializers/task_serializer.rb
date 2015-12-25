class TaskSerializer < ActiveModel::Serializer
  attributes :id, :question, :answer
  has_one :location
end
