class Vote < ActiveRecord::Base
  belongs_to :voter
  belongs_to :candidate

  validates :candidate_id, :voter_id, presence: true
  validates :voter_id, uniqueness: {scope: :candidate_id}

  # def self.display_by_candidate
  #   all.select do |v|
  #     candidate_five = v.candidate_id == 5
  #     candidate_one = v.candidate_id == 1
  #     candidate_four = v.candidate_id == 4
  #   end
  # end
end
