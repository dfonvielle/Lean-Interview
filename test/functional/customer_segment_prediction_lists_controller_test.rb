require 'test_helper'

class CustomerSegmentPredictionListsControllerTest < ActionController::TestCase
  setup do
    @customer_segment_prediction_list = customer_segment_prediction_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customer_segment_prediction_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customer_segment_prediction_list" do
    assert_difference('CustomerSegmentPredictionList.count') do
      post :create, customer_segment_prediction_list: @customer_segment_prediction_list.attributes
    end

    assert_redirected_to customer_segment_prediction_list_path(assigns(:customer_segment_prediction_list))
  end

  test "should show customer_segment_prediction_list" do
    get :show, id: @customer_segment_prediction_list.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customer_segment_prediction_list.to_param
    assert_response :success
  end

  test "should update customer_segment_prediction_list" do
    put :update, id: @customer_segment_prediction_list.to_param, customer_segment_prediction_list: @customer_segment_prediction_list.attributes
    assert_redirected_to customer_segment_prediction_list_path(assigns(:customer_segment_prediction_list))
  end

  test "should destroy customer_segment_prediction_list" do
    assert_difference('CustomerSegmentPredictionList.count', -1) do
      delete :destroy, id: @customer_segment_prediction_list.to_param
    end

    assert_redirected_to customer_segment_prediction_lists_path
  end
end
