require 'test_helper'

class HypotheticalProblemsControllerTest < ActionController::TestCase
  setup do
    @hypothetical_problem = hypothetical_problems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hypothetical_problems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hypothetical_problem" do
    assert_difference('HypotheticalProblem.count') do
      post :create, hypothetical_problem: @hypothetical_problem.attributes
    end

    assert_redirected_to hypothetical_problem_path(assigns(:hypothetical_problem))
  end

  test "should show hypothetical_problem" do
    get :show, id: @hypothetical_problem.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hypothetical_problem.to_param
    assert_response :success
  end

  test "should update hypothetical_problem" do
    put :update, id: @hypothetical_problem.to_param, hypothetical_problem: @hypothetical_problem.attributes
    assert_redirected_to hypothetical_problem_path(assigns(:hypothetical_problem))
  end

  test "should destroy hypothetical_problem" do
    assert_difference('HypotheticalProblem.count', -1) do
      delete :destroy, id: @hypothetical_problem.to_param
    end

    assert_redirected_to hypothetical_problems_path
  end
end
