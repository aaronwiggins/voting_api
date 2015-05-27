class Vote < ActiveRecord::Base
  belongs_to :voter
  belongs_to :candidate

  validates :candidate_id, :voter_id, presence: true
  validates :voter_id, uniqueness: true
end
