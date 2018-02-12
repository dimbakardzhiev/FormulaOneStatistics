require 'test_helper'

class ConstructorresultsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @constructorresult = constructorresults(:one)
  end

  test "should get index" do
    get constructorresults_url
    assert_response :success
  end

  test "should get new" do
    get new_constructorresult_url
    assert_response :success
  end

  test "should create constructorresult" do
    assert_difference('Constructorresult.count') do
      post constructorresults_url, params: { constructorresult: { constructor_id: @constructorresult.constructor_id, points: @constructorresult.points, race_id: @constructorresult.race_id } }
    end

    assert_redirected_to constructorresult_url(Constructorresult.last)
  end

  test "should show constructorresult" do
    get constructorresult_url(@constructorresult)
    assert_response :success
  end

  test "should get edit" do
    get edit_constructorresult_url(@constructorresult)
    assert_response :success
  end

  test "should update constructorresult" do
    patch constructorresult_url(@constructorresult), params: { constructorresult: { constructor_id: @constructorresult.constructor_id, points: @constructorresult.points, race_id: @constructorresult.race_id } }
    assert_redirected_to constructorresult_url(@constructorresult)
  end

  test "should destroy constructorresult" do
    assert_difference('Constructorresult.count', -1) do
      delete constructorresult_url(@constructorresult)
    end

    assert_redirected_to constructorresults_url
  end
end
