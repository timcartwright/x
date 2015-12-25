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

require 'test_helper'

class SolutionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
