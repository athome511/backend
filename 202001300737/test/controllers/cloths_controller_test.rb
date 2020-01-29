require 'test_helper'

class ClothsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cloth = cloths(:one)
  end

  test "should get index" do
    get cloths_url, as: :json
    assert_response :success
  end

  test "should create cloth" do
    assert_difference('Cloth.count') do
      post cloths_url, params: { cloth: { c_link: @cloth.c_link, c_u_id: @cloth.c_u_id } }, as: :json
    end

    assert_response 201
  end

  test "should show cloth" do
    get cloth_url(@cloth), as: :json
    assert_response :success
  end

  test "should update cloth" do
    patch cloth_url(@cloth), params: { cloth: { c_link: @cloth.c_link, c_u_id: @cloth.c_u_id } }, as: :json
    assert_response 200
  end

  test "should destroy cloth" do
    assert_difference('Cloth.count', -1) do
      delete cloth_url(@cloth), as: :json
    end

    assert_response 204
  end
end
