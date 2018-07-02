require 'test_helper'

class ModelControllerTest < ActionDispatch::IntegrationTest
  test "should get roles" do
    get model_roles_url
    assert_response :success
  end

  test "should get id:integer" do
    get model_id:integer_url
    assert_response :success
  end

  test "should get role_name:string" do
    get model_role_name:string_url
    assert_response :success
  end

end
