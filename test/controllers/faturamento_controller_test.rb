require 'test_helper'

class FaturamentoControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
