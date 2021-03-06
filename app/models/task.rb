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

class Task < ActiveRecord::Base
  belongs_to :location
end
