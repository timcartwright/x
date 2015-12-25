# == Schema Information
#
# Table name: locations
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string
#  lat         :decimal(, )
#  long        :decimal(, )
#  game_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Location < ActiveRecord::Base
  belongs_to :game
  has_many :tasks
  has_one :clue

  validates :name, :description, presence: true
  validates :lat, :long, presence: true, numericality: true
end
