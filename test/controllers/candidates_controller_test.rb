require 'test_helper'

class CandidatesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "can show candidate" do
    bill = Candidate.create(name:"Bill", hometown:"FakeCity", district:"BG", party:"Green")
    get :show, {id: bill.id}
    assert_response :success
    assert response.body =~ /name/
  end

end
