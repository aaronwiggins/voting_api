class Voter < ActiveRecord::Base
  belongs_to :vote

  validates :name, :party, presence: true
  validates :name, uniqueness: true
end
