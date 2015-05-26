class Vote < ActiveRecord::Base
  has_many :voters
  belongs_to :candidate

  validates :candidate_id, :voter_id, presence: true
  validates :voter_id, uniqueness: true
end
