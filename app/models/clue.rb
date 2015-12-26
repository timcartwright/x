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

class Clue < ActiveRecord::Base
  
end
