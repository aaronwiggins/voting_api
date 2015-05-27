class Voter < ActiveRecord::Base
  has_many :votes

  validates :name, :party, presence: true
  validates :name, uniqueness: true
end
