# == Schema Information
#
# Table name: players
#
#  id         :integer          not null, primary key
#  name       :string
#  phone      :string
#  game_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Player < ActiveRecord::Base
  belongs_to :game
end
