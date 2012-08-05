require 'test_helper'

class AbstracaoCognicaoControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get memoria" do
    get :memoria
    assert_response :success
  end

  test "should get logica" do
    get :logica
    assert_response :success
  end

  test "should get verbal" do
    get :verbal
    assert_response :success
  end

end
