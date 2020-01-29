require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url, as: :json
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { u_icon: @user.u_icon, u_mail: @user.u_mail, u_month_bc: @user.u_month_bc, u_name: @user.u_name, u_password: @user.u_password, u_total_bc: @user.u_total_bc } }, as: :json
    end

    assert_response 201
  end

  test "should show user" do
    get user_url(@user), as: :json
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { u_icon: @user.u_icon, u_mail: @user.u_mail, u_month_bc: @user.u_month_bc, u_name: @user.u_name, u_password: @user.u_password, u_total_bc: @user.u_total_bc } }, as: :json
    assert_response 200
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user), as: :json
    end

    assert_response 204
  end
end
