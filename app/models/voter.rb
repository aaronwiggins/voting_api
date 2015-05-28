class Voter < ActiveRecord::Base
  has_many :votes
  belongs_to :api_key

  validates :name, :party, presence: true
  validates :name, uniqueness: true
end
