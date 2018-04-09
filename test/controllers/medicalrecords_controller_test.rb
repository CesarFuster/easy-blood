require 'test_helper'

class MedicalrecordsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get medicalrecords_show_url
    assert_response :success
  end

  test "should get new" do
    get medicalrecords_new_url
    assert_response :success
  end

  test "should get create" do
    get medicalrecords_create_url
    assert_response :success
  end

  test "should get edit" do
    get medicalrecords_edit_url
    assert_response :success
  end

  test "should get update" do
    get medicalrecords_update_url
    assert_response :success
  end

  test "should get destroy" do
    get medicalrecords_destroy_url
    assert_response :success
  end

end
