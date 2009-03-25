require 'test_helper'

class ProductosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:productos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create producto" do
    assert_difference('Producto.count') do
      post :create, :producto => { }
    end

    assert_redirected_to producto_path(assigns(:producto))
  end

  test "should show producto" do
    get :show, :id => productos(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => productos(:one).id
    assert_response :success
  end

  test "should update producto" do
    put :update, :id => productos(:one).id, :producto => { }
    assert_redirected_to producto_path(assigns(:producto))
  end

  test "should destroy producto" do
    assert_difference('Producto.count', -1) do
      delete :destroy, :id => productos(:one).id
    end

    assert_redirected_to productos_path
  end
end
