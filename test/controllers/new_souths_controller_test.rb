require 'test_helper'

class NewSouthsControllerTest < ActionController::TestCase
  setup do
    @new_south = new_souths(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:new_souths)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create new_south" do
    assert_difference('NewSouth.count') do
      post :create, new_south: { done: @new_south.done, due: @new_south.due, notes: @new_south.notes, title: @new_south.title }
    end

    assert_redirected_to new_south_path(assigns(:new_south))
  end

  test "should show new_south" do
    get :show, id: @new_south
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @new_south
    assert_response :success
  end

  test "should update new_south" do
    patch :update, id: @new_south, new_south: { done: @new_south.done, due: @new_south.due, notes: @new_south.notes, title: @new_south.title }
    assert_redirected_to new_south_path(assigns(:new_south))
  end

  test "should destroy new_south" do
    assert_difference('NewSouth.count', -1) do
      delete :destroy, id: @new_south
    end

    assert_redirected_to new_souths_path
  end
end
