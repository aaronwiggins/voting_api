require 'test_helper'

class CanidateTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "create candiate" do
    bill = Canidate.new(name: "Bill Murray", hometown: "Evanston, IL", district: "13")
    refute bill.save
  end
end
