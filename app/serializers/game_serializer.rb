# == Schema Information
#
# Table name: games
#
#  id           :integer          not null, primary key
#  name         :string
#  description  :string
#  instructions :text
#  user_id      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class GameSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :instructions
end
