require 'test_helper'

class EmplooysControllerTest < ActionController::TestCase
  setup do
    @emplooy = emplooys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:emplooys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create emplooy" do
    assert_difference('Emplooy.count') do
      post :create, emplooy: { birthday: @emplooy.birthday, description: @emplooy.description, name: @emplooy.name, number: @emplooy.number, sex: @emplooy.sex }
    end

    assert_redirected_to emplooy_path(assigns(:emplooy))
  end

  test "should show emplooy" do
    get :show, id: @emplooy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @emplooy
    assert_response :success
  end

  test "should update emplooy" do
    patch :update, id: @emplooy, emplooy: { birthday: @emplooy.birthday, description: @emplooy.description, name: @emplooy.name, number: @emplooy.number, sex: @emplooy.sex }
    assert_redirected_to emplooy_path(assigns(:emplooy))
  end

  test "should destroy emplooy" do
    assert_difference('Emplooy.count', -1) do
      delete :destroy, id: @emplooy
    end

    assert_redirected_to emplooys_path
  end
end
