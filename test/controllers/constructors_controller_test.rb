require 'test_helper'

class ConstructorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @constructor = constructors(:one)
  end

  test "should get index" do
    get constructors_url
    assert_response :success
  end

  test "should get new" do
    get new_constructor_url
    assert_response :success
  end

  test "should create constructor" do
    assert_difference('Constructor.count') do
      post constructors_url, params: { constructor: { name: @constructor.name, nationality: @constructor.nationality } }
    end

    assert_redirected_to constructor_url(Constructor.last)
  end

  test "should show constructor" do
    get constructor_url(@constructor)
    assert_response :success
  end

  test "should get edit" do
    get edit_constructor_url(@constructor)
    assert_response :success
  end

  test "should update constructor" do
    patch constructor_url(@constructor), params: { constructor: { name: @constructor.name, nationality: @constructor.nationality } }
    assert_redirected_to constructor_url(@constructor)
  end

  test "should destroy constructor" do
    assert_difference('Constructor.count', -1) do
      delete constructor_url(@constructor)
    end

    assert_redirected_to constructors_url
  end
end
