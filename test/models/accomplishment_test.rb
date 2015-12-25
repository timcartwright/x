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

require 'test_helper'

class AccomplishmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
