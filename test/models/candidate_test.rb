require 'test_helper'

class CandidateTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "create candiate" do
    bill = Candidate.new(name: "Bill Murray", hometown: "Evanston, IL", district: "13")
    refute bill.save
  end
end
