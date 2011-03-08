require 'test_helper'

class NotkiControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:notki)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create notka" do
    assert_difference('Notka.count') do
      post :create, :notka => { }
    end

    assert_redirected_to notka_path(assigns(:notka))
  end

  test "should show notka" do
    get :show, :id => notki(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => notki(:one).to_param
    assert_response :success
  end

  test "should update notka" do
    put :update, :id => notki(:one).to_param, :notka => { }
    assert_redirected_to notka_path(assigns(:notka))
  end

  test "should destroy notka" do
    assert_difference('Notka.count', -1) do
      delete :destroy, :id => notki(:one).to_param
    end

    assert_redirected_to notki_path
  end
end
