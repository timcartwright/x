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

class Solution < ActiveRecord::Base
  belongs_to :player
  belongs_to :clue
end
