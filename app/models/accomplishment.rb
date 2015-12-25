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

class Accomplishment < ActiveRecord::Base
  belongs_to :player
  belongs_to :task
end
