require 'test_helper'

class VoterTest < ActiveSupport::TestCase
  test "check validation" do
    legolas = Voter.create(name: "Legolas", party: "Elves")
    aragorn = Voter.new(name: "Legolas", party: "Men")

    refute aragorn.save
  end

  test "check association" do
    gimli = Candidate.create(name: "Gimli", hometown: "Misty Mountains", district: "Glittering Caves", party: "Dwarves")
    legolas = Voter.create(name: "Legolas", party: "Elves")
    vote = Vote.create(candidate_id: gimli.id, voter_id: legolas.id)

    assert_equal vote.voter_id, Voter.last.id
  end
end
