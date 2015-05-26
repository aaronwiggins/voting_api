require 'test_helper'

class VoteTest < ActiveSupport::TestCase
  test "check association" do
    gimli = Candidate.create(name: "Gimli", hometown: "Misty Mountains", district: "Glittering Caves", party: "Dwarves")
    legolas = Voter.create(name: "Legolas", party: "Elves")
    vote = Vote.create(candidate_id: gimli.id, voter_id: legolas.id)

    assert_equal legolas.id, Vote.last.voter_id
  end

  test "check validation, uniqueness" do
    vote_one = Vote.create(candidate_id: 1, voter_id: 3)
    vote_two = Vote.new(candidate_id: 2, voter_id: 3)

    refute vote_two.save
  end
end
