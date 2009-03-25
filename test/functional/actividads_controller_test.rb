require 'test_helper'

class ActividadsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:actividads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create actividad" do
    assert_difference('Actividad.count') do
      post :create, :actividad => { }
    end

    assert_redirected_to actividad_path(assigns(:actividad))
  end

  test "should show actividad" do
    get :show, :id => actividads(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => actividads(:one).id
    assert_response :success
  end

  test "should update actividad" do
    put :update, :id => actividads(:one).id, :actividad => { }
    assert_redirected_to actividad_path(assigns(:actividad))
  end

  test "should destroy actividad" do
    assert_difference('Actividad.count', -1) do
      delete :destroy, :id => actividads(:one).id
    end

    assert_redirected_to actividads_path
  end
end
