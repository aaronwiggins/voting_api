class Candidate < ActiveRecord::Base
  has_many :votes
  has_many :voters, through: :votes

  validates :name, :hometown, :district, :party, presence: true
  validates :name, uniqueness: true
end
