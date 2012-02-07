require 'test_helper'

class ProblemPredictionListsControllerTest < ActionController::TestCase
  setup do
    @problem_prediction_list = problem_prediction_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:problem_prediction_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create problem_prediction_list" do
    assert_difference('ProblemPredictionList.count') do
      post :create, problem_prediction_list: @problem_prediction_list.attributes
    end

    assert_redirected_to problem_prediction_list_path(assigns(:problem_prediction_list))
  end

  test "should show problem_prediction_list" do
    get :show, id: @problem_prediction_list.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @problem_prediction_list.to_param
    assert_response :success
  end

  test "should update problem_prediction_list" do
    put :update, id: @problem_prediction_list.to_param, problem_prediction_list: @problem_prediction_list.attributes
    assert_redirected_to problem_prediction_list_path(assigns(:problem_prediction_list))
  end

  test "should destroy problem_prediction_list" do
    assert_difference('ProblemPredictionList.count', -1) do
      delete :destroy, id: @problem_prediction_list.to_param
    end

    assert_redirected_to problem_prediction_lists_path
  end
end
