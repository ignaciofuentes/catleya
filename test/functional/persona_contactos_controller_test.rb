require 'test_helper'

class PersonaContactosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:persona_contactos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create persona_contacto" do
    assert_difference('PersonaContacto.count') do
      post :create, :persona_contacto => { }
    end

    assert_redirected_to persona_contacto_path(assigns(:persona_contacto))
  end

  test "should show persona_contacto" do
    get :show, :id => persona_contactos(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => persona_contactos(:one).id
    assert_response :success
  end

  test "should update persona_contacto" do
    put :update, :id => persona_contactos(:one).id, :persona_contacto => { }
    assert_redirected_to persona_contacto_path(assigns(:persona_contacto))
  end

  test "should destroy persona_contacto" do
    assert_difference('PersonaContacto.count', -1) do
      delete :destroy, :id => persona_contactos(:one).id
    end

    assert_redirected_to persona_contactos_path
  end
end
