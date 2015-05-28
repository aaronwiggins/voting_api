require 'test_helper'

class VotersControllerTest < ActionController::TestCase
  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get update" do
    get :update
    assert_response :success
  end

  test "can create voter" do
    assert_difference("Voter.count") do
      post :create, {name: "Bill Thornton", party: "Green"}
    end
    assert_equal "Bill Thornton", Voter.last.name
  end

  test "show voter" do
    tim = Voter.create(name:"Tim", party:"Green")
    get :show, {id: tim.id}
    assert_response :success
    assert response.body =~ /name/
  end
end
