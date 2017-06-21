require 'test_helper'

class RelationalsControllerTest < ActionController::TestCase
  setup do
    @relational = relationals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:relationals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create relational" do
    assert_difference('Relational.count') do
      post :create, relational: { end_day: @relational.end_day, r_id: @relational.r_id, start_day: @relational.start_day, u_id: @relational.u_id }
    end

    assert_redirected_to relational_path(assigns(:relational))
  end

  test "should show relational" do
    get :show, id: @relational
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @relational
    assert_response :success
  end

  test "should update relational" do
    patch :update, id: @relational, relational: { end_day: @relational.end_day, r_id: @relational.r_id, start_day: @relational.start_day, u_id: @relational.u_id }
    assert_redirected_to relational_path(assigns(:relational))
  end

  test "should destroy relational" do
    assert_difference('Relational.count', -1) do
      delete :destroy, id: @relational
    end

    assert_redirected_to relationals_path
  end
end
