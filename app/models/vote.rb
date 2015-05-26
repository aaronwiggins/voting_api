class Vote < ActiveRecord::Base
  has_many :voters
  belongs_to :canidate

  validates :canidate_id, :voter_id, presence: true
end
