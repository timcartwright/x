# == Schema Information
#
# Table name: games
#
#  id           :integer          not null, primary key
#  name         :string
#  description  :string
#  instructions :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Game < ActiveRecord::Base
end
