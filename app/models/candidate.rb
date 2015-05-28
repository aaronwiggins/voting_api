class Candidate < ActiveRecord::Base
  has_many :votes
  has_many :voters, through: :votes

  validates :name, :hometown, :district, :party, presence: true
  validates :name, uniqueness: true

  def self.display_votes
    all.map {|n| name: n.name, party: n.party, total: votes.count}
  end
end
