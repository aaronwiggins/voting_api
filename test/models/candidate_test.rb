require 'test_helper'

class CandidateTest < ActiveSupport::TestCase
  test "create candidate" do
    bill = Candidate.new(name: "Bill Murray", hometown: "Evanston, IL", district: "13")
    refute bill.save
  end

  test "get last candidate" do
    bill = Candidate.create(name: "Bill Murray", hometown: "Evanston, IL", district: "13", party: "Busters")
    gimli = Candidate.create(name: "Gimli", hometown: "Misty Mountains", district: "Glittering Caves", party: "Dwarves")

    assert_equal gimli.name, Candidate.last.name
  end
end
