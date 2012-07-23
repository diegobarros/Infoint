require 'test_helper'

class TecladoControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get estudar_teclado" do
    get :estudar_teclado
    assert_response :success
  end

  test "should get exercitar_teclado" do
    get :exercitar_teclado
    assert_response :success
  end

end
