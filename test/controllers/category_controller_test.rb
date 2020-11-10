require 'test_helper'

class CategoryControllerTest < ActionDispatch::IntegrationTest
  test "should get placeid" do
    get category_placeid_url
    assert_response :success
  end

  test "should get placename" do
    get category_placename_url
    assert_response :success
  end

  test "should get description" do
    get category_description_url
    assert_response :success
  end

end
