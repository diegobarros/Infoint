require 'test_helper'

class ControleInterfaceControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get estudar_controle_interface" do
    get :estudar_controle_interface
    assert_response :success
  end

end
