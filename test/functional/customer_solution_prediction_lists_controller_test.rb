require 'test_helper'

class CustomerSolutionPredictionListsControllerTest < ActionController::TestCase
  setup do
    @customer_solution_prediction_list = customer_solution_prediction_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customer_solution_prediction_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customer_solution_prediction_list" do
    assert_difference('CustomerSolutionPredictionList.count') do
      post :create, customer_solution_prediction_list: @customer_solution_prediction_list.attributes
    end

    assert_redirected_to customer_solution_prediction_list_path(assigns(:customer_solution_prediction_list))
  end

  test "should show customer_solution_prediction_list" do
    get :show, id: @customer_solution_prediction_list.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customer_solution_prediction_list.to_param
    assert_response :success
  end

  test "should update customer_solution_prediction_list" do
    put :update, id: @customer_solution_prediction_list.to_param, customer_solution_prediction_list: @customer_solution_prediction_list.attributes
    assert_redirected_to customer_solution_prediction_list_path(assigns(:customer_solution_prediction_list))
  end

  test "should destroy customer_solution_prediction_list" do
    assert_difference('CustomerSolutionPredictionList.count', -1) do
      delete :destroy, id: @customer_solution_prediction_list.to_param
    end

    assert_redirected_to customer_solution_prediction_lists_path
  end
end
