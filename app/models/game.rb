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

class Game < ActiveRecord::Base
  belongs_to :user

  validates :name, :description, :instructions, presence: true
end
