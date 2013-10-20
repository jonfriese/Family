require 'test_helper'

class SonsControllerTest < ActionController::TestCase
  setup do
    @son = sons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create son" do
    assert_difference('Son.count') do
      post :create, son: { father_id: @son.father_id, name: @son.name }
    end

    assert_redirected_to son_path(assigns(:son))
  end

  test "should show son" do
    get :show, id: @son
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @son
    assert_response :success
  end

  test "should update son" do
    put :update, id: @son, son: { father_id: @son.father_id, name: @son.name }
    assert_redirected_to son_path(assigns(:son))
  end

  test "should destroy son" do
    assert_difference('Son.count', -1) do
      delete :destroy, id: @son
    end

    assert_redirected_to sons_path
  end
end
