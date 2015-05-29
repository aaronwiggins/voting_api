class Voter < ActiveRecord::Base
  has_many :votes
  belongs_to :api_key

  validates :name, :party, presence: true
  validates :name, uniqueness: true

  before_create :set_token

  def set_token
    self.token ||= SecureRandom.hex
  end
end
