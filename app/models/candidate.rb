class Candidate < ActiveRecord::Base
  has_many :votes

  validates :name, :hometown, :district, :party, presence: true
  validates :name, uniqueness: true

  def number_of_votes
    @vote_count ||= votes.count
  end

  def self.most_votes
    sorted = all.sort_by &:number_of_votes
    sorted.last
  end

  def self.all_with_votes
    Candidate.all.map do |c|
      {name: c.name, number_of_votes: c.number_of_votes}
    end
  end
end
