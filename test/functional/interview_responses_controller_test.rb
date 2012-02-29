require 'test_helper'

class InterviewResponsesControllerTest < ActionController::TestCase
  setup do
    @interview_response = interview_responses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:interview_responses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create interview_response" do
    assert_difference('InterviewResponse.count') do
      post :create, interview_response: @interview_response.attributes
    end

    assert_redirected_to interview_response_path(assigns(:interview_response))
  end

  test "should show interview_response" do
    get :show, id: @interview_response.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @interview_response.to_param
    assert_response :success
  end

  test "should update interview_response" do
    put :update, id: @interview_response.to_param, interview_response: @interview_response.attributes
    assert_redirected_to interview_response_path(assigns(:interview_response))
  end

  test "should destroy interview_response" do
    assert_difference('InterviewResponse.count', -1) do
      delete :destroy, id: @interview_response.to_param
    end

    assert_redirected_to interview_responses_path
  end
end
